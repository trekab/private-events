Rails.application.routes.draw do
  get 'users/new'
  post 'users/new', to: 'users#create'
  get 'users/create'
  get 'users/:id', to: 'users#show'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'events/new', to: 'events#new'
  post 'events/new', to: 'events#create'
  get 'events/index', to: 'events#index'
  get 'events/:id', to: 'events#show'
end
