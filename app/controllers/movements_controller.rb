class MovementsController < ApplicationController
  def create
    @character = current_user.character
    @character.move(params[:direction])
    @map = Map.new(@character).display
    redirect_to "/"
  end
end
