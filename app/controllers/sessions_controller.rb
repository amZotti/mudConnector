class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def create
    user = authenticate_session(session_params)
    sign_in(user)
    redirect_to root_path
  end

  def destroy
    sign_out
    redirect_to root_path
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end

