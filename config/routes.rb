Rails.application.routes.draw do
  resources :owners
  resources :tools
  root 'tools#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
