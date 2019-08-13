Rails.application.routes.draw do
  root to: 'users#index'
  resources :item_users
  resources :items
  resources :monsters
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
