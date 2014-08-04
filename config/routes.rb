require "monban/constraints/signed_in"
require "monban/constraints/signed_out"

Rails.application.routes.draw do
  constraints Monban::Constraints::SignedIn.new do
    root "dashboards#show", as: :dashboard
    resource :session, only: [:destroy] 
  end

  constraints Monban::Constraints::SignedOut.new do
    root "landings#new"
    resource :session, only: [:new, :create]
    resources :users, only: [:new, :create]
  end
end
