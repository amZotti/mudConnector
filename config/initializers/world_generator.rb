world_attributes = WorldAttributes.new
render_world = RenderWorld.new
WORLD = [
  world_attributes.grasslands(10),
  world_attributes.grasslands(5) + world_attributes.forest(5),
  world_attributes.forest(5) + world_attributes.water(5)
]
render_world.mark_character_coordinates(WORLD, [0,0])
MAP = render_world.render_world_for_display(WORLD)

