class CvuploadsController < ApplicationController
  before_action :set_cvupload, only: %i[ show edit update destroy ]

  # GET /cvuploads or /cvuploads.json
  def index
    @cvuploads = Cvupload.all
  end

  # GET /cvuploads/1 or /cvuploads/1.json
  def show
  end

  # GET /cvuploads/new
  def new
    @cvupload = Cvupload.new
  end

  # GET /cvuploads/1/edit
  def edit
  end

  # POST /cvuploads or /cvuploads.json
  def create
    @cvupload = Cvupload.new(cvupload_params)

    respond_to do |format|
      if @cvupload.save
        format.html { redirect_to @cvupload, notice: "Cvupload was successfully created." }
        format.json { render :show, status: :created, location: @cvupload }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cvupload.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cvuploads/1 or /cvuploads/1.json
  def update
    respond_to do |format|
      if @cvupload.update(cvupload_params)
        format.html { redirect_to @cvupload, notice: "Cvupload was successfully updated." }
        format.json { render :show, status: :ok, location: @cvupload }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cvupload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cvuploads/1 or /cvuploads/1.json
  def destroy
    @cvupload.destroy
    respond_to do |format|
      format.html { redirect_to cvuploads_url, notice: "Cvupload was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cvupload
      @cvupload = Cvupload.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cvupload_params
      params.require(:cvupload).permit(:text)
    end
end
