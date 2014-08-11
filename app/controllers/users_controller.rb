class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def create
    @user = sign_up(user_params)
    if @user.valid?
      sign_in(@user)
      Character.create(user_id: current_user.id)
      redirect_to root_path
    else
      flash[:error] = "Could not sign you up. Check the form below for errors"
      render "landings/new"
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
