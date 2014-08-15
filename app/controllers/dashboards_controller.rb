class DashboardsController < ApplicationController
  def show
    @character = current_user.character
    @map = Map.new(@character).display
  end
end
