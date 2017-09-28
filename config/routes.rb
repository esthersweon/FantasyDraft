Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :leagues
  get 'login', to: 'sessions#new', as: 'login'
  post 'sessions', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
end
