class DashboardsController < ApplicationController
  def show
    @character = current_user.character
    @map = Map.new.display
  end
end
