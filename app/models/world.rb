class World < ActiveRecord::Base
  serialize :terrain
end
#Create world in console upon db:migrate
#World.create(terrain: TerrainBuilder.new)
WORLD = World.first
