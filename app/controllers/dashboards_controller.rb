class DashboardsController < ApplicationController
  def show
    @character = Character.new
    @map = Map.new(@character).display
  end
end
