class MovementsController < ApplicationController
  def create
    @character = current_user.character
    @character.move(params[:direction])
    @colliding = Character.colliding_with(@character) + NonPlayerCharacter.colliding_with(@character)
    @map = Map.new(@character).display
    render "dashboards/show"
  end
end
