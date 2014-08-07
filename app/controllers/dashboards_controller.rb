class DashboardsController < ApplicationController
  def show
    @map = MapUpdater.start_game
  end
end
