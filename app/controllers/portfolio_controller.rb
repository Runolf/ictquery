class PortfolioController < ApplicationController
  include Wicked::Wizard
  steps :personal, :social
  
  def show
      @user = current_user
      @age = ((Time.zone.now - @user.birthdate.to_time) / 1.year.seconds).floor
      render_wizard
    end
  
    def update
      @user = current_user
      render_wizard @user
    end
  end