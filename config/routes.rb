Rails.application.routes.draw do
  resources :faqs
  resources :owners
  resources :tools
  root 'tools#index'
  devise_for :users
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
