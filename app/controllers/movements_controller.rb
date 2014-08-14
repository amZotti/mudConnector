class MovementsController < ApplicationController
  def create
    @character = current_user.character
    @character.move(params[:direction])
    @map = Map.new(@character).display
    @characters_in_square = Square.characters(@character)
    render "dashboards/show"
  end
end
