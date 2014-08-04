class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def create
    @user = sign_up(user_params)
    if @user.valid?
      sign_in(@user)
      redirect_to root_path
    else
      flash.now[:error] = @user.errors.full_messages
      render "landings/new"
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end

