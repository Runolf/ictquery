class PortfolioController < ApplicationController
  include Wicked::Wizard
  steps :personal, :links

  def show
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
      render_wizard
    end
  
    def update
      @user = current_user
      render_wizard @user
    end
  end
