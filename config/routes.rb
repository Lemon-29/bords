Rails.application.routes.draw do
  root 'home#index'
  resources :bords
  resources :comments, only: %i[create destroy]
end
