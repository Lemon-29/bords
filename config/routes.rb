Rails.application.routes.draw do
  get 'home/index'
  get 'sessions/create'
  get 'sessions/detroy'
  root 'home#index'
  resources :bords
  resources :comments, only: %i[create destroy]
end
