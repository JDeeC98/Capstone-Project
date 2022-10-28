Rails.application.routes.draw do

get 'games', to: 'games#index'

post '/login', to: 'sessions#create'

resources :games, only: [:index, :show, :create, :update, :destroy]
resources :reviews
resources :users, only: [:index, :show, :create, :update, :destroy]



end