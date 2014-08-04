class LandingsController < ApplicationController
  def new
    @user = User.new
  end
end
