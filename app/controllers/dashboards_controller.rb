class DashboardsController < ApplicationController
  def show
    @character = current_user.character
    @map = Map.new(@character).display
    @characters_in_square = Square.characters(@character)
  end
end
