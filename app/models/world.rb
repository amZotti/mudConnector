class World < ActiveRecord::Base
  serialize :terrain
end

WORLD = World.first
