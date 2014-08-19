WebsocketRails::EventMap.describe do
  namespace :movements do
    subscribe :create, 'movements#create'
  end

  namespace :damage_bots do
    subscribe :create, 'damage_bots#create'
  end
end
