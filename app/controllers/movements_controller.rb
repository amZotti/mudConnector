class MovementsController < ApplicationController
  def create
    @character = current_user.character
    @map = Map.new.display
    render "dashboards/show"
  end
end
