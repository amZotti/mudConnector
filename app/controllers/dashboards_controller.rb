class DashboardsController < ApplicationController
  def show
    @character = current_user.character
    @map = Map.new(@character).display
    Message.display_map(@map)
  end
end
