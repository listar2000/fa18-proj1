Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  # routes related to the pokemon_controller
  patch "capture/:id", to: "pokemon#capture", as: 'capture'
  post "damage/:id", to: "pokemon#damage", as: 'damage'
  get "pokemon/new", to: "pokemon#new", as: 'new_pokemon'
  post "pokemon/create", to: "pokemon#create", as: 'create_pokemon'
  # get "pokemon/demo", to: "pokemon#demo", as: 'demo_pokemon'
end
