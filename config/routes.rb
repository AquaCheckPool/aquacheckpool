Rails.application.routes.draw do
  resources :pools
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pools#index'
end
