class PortfolioController < ApplicationController

  def personal
    # https://www.best-job-interview.com/list-of-strengths-and-weaknesses.html
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
      # @portfolios = Portfolio.new
    end

    def show

    end

    def new
    end

    def create
    end

  end
