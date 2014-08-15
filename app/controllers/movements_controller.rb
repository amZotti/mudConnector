class MovementsController < ApplicationController
  def create
    character = current_user.character
    character.move(params[:direction])
    redirect_to root_path
  end
end
