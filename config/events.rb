WebsocketRails::EventMap.describe do
  namespace :movements do
    subscribe :create, 'movements#create'
  end

  namespace :damage_bots do
    subscribe :create, 'damage_bots#create'
    subscribe :destroy, 'damage_bots#destroy'
  end

  namespace :damage_user do 
    subscribe :create, 'damage_users#create'
  end
end
