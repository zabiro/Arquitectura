Rails.application.routes.draw do
 
  get 'inicio/index'
  root 'inicio#index' 
  resources :peticions
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
