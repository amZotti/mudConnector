class MapUpdater

  def self.update_game(map,world,location)
    map.mark_character_coordinates(world, location)
    html_displayable_map = map.render_world_for_html_display(world)
  end

  def self.start_game
    update_game(Map.new,WORLD,START_LOCATION)
  end
end
