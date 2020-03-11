Rails.application.routes.draw do
  get 'users/new'
  post 'users/new', to: 'users#create'
  get 'users/create'
  get 'users/show'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
