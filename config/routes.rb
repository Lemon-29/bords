Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'bords', to: 'bords#index'
  get 'bords/new', to: 'bords#new'
end
