class ProfileController < ApplicationController
  def index
    @user = current_user
  end
  def show
    @user = current_user
    render index
  end
  def update
    @user = current_user
    @user.update_attributes(user_params)

  end
  def uploadcv
  end
  def sollicitations
  end
  def accountsettings
  end
end
