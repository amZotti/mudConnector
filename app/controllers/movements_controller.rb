class MovementsController < ApplicationController
  def create
    @character = current_user.character
    @character.move(params[:direction])
    @map = Map.new(@character).display
    render "dashboards/show"
  end
end
