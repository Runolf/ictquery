class PortfolioController < ApplicationController
include Wicked::Wizard
steps :personal, :social

def show
    @user = current_user
    render_wizard
  end

  def update
    @user = current_user
    @user.update_attributes(user_params)
    render_wizard @user
  end
end