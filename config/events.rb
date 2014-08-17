WebsocketRails::EventMap.describe do
  namespace :attacks do
    subscribe :create, 'attacks#create'
  end
  namespace :movements do
    subscribe :create, 'movements#create'
  end
end
