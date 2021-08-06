class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: %i[ show edit update destroy ]

  # GET /portfolios or /portfolios.json
  def index
    @portfolios = Portfolio.all
  end

  # GET /portfolios/1 or /portfolios/1.json
  def show
  end

  # GET /portfolios/new
  def new
    @portfolio = Portfolio.new
    @strengths = ["Communication",
      "Strong work ethic/diligent",
      "Organizational and planning skills",
      "Flexible and adaptable",
      "Decision-making and judgment",
      "Problem solving",
      "Gathering, analyzing and managing information",
      "Coaching and mentoring",
      "Team work",
      "Reliable and dependable",
      "Self reliant and self management",
      "Self discipline",
      "Persistent and resilient",
      "Persuasive",
      "Integrity",
      "Energetic",
      "Initiative"]
      @user = current_user
      @age = ((Time.zone.now - @user.birthdate.to_time) / 1.year.seconds).floor
  end

  # GET /portfolios/1/edit
  def edit
    @strengths = ["Communication",
      "Strong work ethic/diligent",
      "Organizational and planning skills",
      "Flexible and adaptable",
      "Decision-making and judgment",
      "Problem solving",
      "Gathering, analyzing and managing information",
      "Coaching and mentoring",
      "Team work",
      "Reliable and dependable",
      "Self reliant and self management",
      "Self discipline",
      "Persistent and resilient",
      "Persuasive",
      "Integrity",
      "Energetic",
      "Initiative"]
      @user = current_user
      @age = ((Time.zone.now - @user.birthdate.to_time) / 1.year.seconds).floor
  end

  # POST /portfolios or /portfolios.json
  def create  
    @portfolio = Portfolio.create(portfolio_params)

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to @portfolio, notice: "Portfolio was successfully created." }
        format.json { render :show, status: :created, location: @portfolio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /portfolios/1 or /portfolios/1.json
  def update
    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to @portfolio, notice: "Portfolio was successfully updated." }
        format.json { render :show, status: :ok, location: @portfolio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @portfolio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portfolios/1 or /portfolios/1.json
  def destroy
    @portfolio.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: "Portfolio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio
      @portfolio = Portfolio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def portfolio_params
      params.require(:portfolio).permit(:image, :firstname, :lastname, :email, :telephone, :about, :link, :linkdescription, :project, :title, :description, :projectimage, :projectvideo, :strength => [], :skill => [])
    end
end
