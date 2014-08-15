class DashboardsController < ApplicationController
  def show
    @character = current_user.character
    @map = Map.new(@character).display
   # @colliding = Character.colliding_with(@character) + NonPlayerCharacter.colliding_with(@character)
  end
end
