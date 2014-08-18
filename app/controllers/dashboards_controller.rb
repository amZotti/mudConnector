class DashboardsController < ApplicationController
  def show
    game = Game.new(current_user.character)
    game.render_map_display
    game.render_square_display
  end
end
