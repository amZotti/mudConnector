require 'world_builder'
class MapUpdater

  def self.update_game(map,world,location)
    map.mark_character_coordinates(world, location)
    html_displayable_map = map.render_world_for_html_display(world)
  end

  def self.start_game
    starting_location = [0,0]
    world = WorldBuilder.new
    map = Map.new
    update_game(map, world.terrain, starting_location)
  end
end
