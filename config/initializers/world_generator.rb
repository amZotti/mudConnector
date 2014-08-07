world_attributes = WorldAttributes.new
START_LOCATION = [2,2]
WORLD = [
  world_attributes.grasslands(10),
  world_attributes.grasslands(5) + world_attributes.forest(5),
  world_attributes.forest(5) + world_attributes.water(5)
]

