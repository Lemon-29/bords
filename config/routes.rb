Rails.application.routes.draw do
  get 'mypage', to: 'users#me'
  post 'login', to: 'session#create'
  delete 'logout', to:'session#destroy'

  root 'home#index'
  resources :bords
  resources :users, only:%i[new create]
  resources :comments, only: %i[create destroy]
end
