WebsocketRails::EventMap.describe do
  namespace :attacks do
    subscribe :create, 'attacks#create'
  end

  namespace :movements do
    subscribe :create, 'movements#create'
  end

  namespace :timings do
    subscribe :create, 'timings#create'
  end
end
