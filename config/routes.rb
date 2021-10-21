Rails.application.routes.draw do
  root to: "home#index"
  get '/properties_list', to: "properties#property_list"
  get '/show_user', to: "home#show_user"
  resources :likes
  resources :properties
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
