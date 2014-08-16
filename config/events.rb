WebsocketRails::EventMap.describe do
  namespace :attacks do
    subscribe :create, 'attacks#create'
  end
end
