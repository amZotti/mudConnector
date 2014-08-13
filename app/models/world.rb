class World < ActiveRecord::Base
  serialize :terrain
end

#Activated in seeds.rb
WORLD = World.first
