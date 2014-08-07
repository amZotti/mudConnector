class DashboardsController < ApplicationController
  def show
    @map = Character.parse_location
  end
end
