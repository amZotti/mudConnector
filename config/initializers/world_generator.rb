world_attributes = WorldAttributes.new
render_world = RenderWorld.new
WORLD = [
  world_attributes.grasslands(10),
  world_attributes.grasslands(5) + world_attributes.forest(5),
  world_attributes.forest(5) + world_attributes.water(5)
]
render_world.mark_character_coordinates(WORLD, [0,0]) #I know hardcoding this is kind of ghetto, but in the next step or 2 I am going to put the players coordinates in database/models so they can be accessed directly with current_user.character.coordinates instead of passing around parameters.

#MAP is the rendered world. WORLD is the actual world. This is designed to be philsophical statement.
MAP = render_world.render_world_for_display(WORLD)

