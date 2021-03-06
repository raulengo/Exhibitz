Rails.application.routes.draw do
  devise_for :users
  root to: 'exhibits#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :exhibits, only: [:index, :show] do
    resources :bookings, only: [:create, :index]
    resources :favourites, only: [:create]
  end
  resources :bookings, except: [:create] do 
     get "confirmation", to: "bookings#confirmation"
  end
  resources :artists, only: [:index, :show]
  resources :museums, only: [:index, :show]
  get "locations", to: "pages#locations"
  resources :favourites, only: [:index, :destroy]

end
