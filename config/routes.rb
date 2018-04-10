Rails.application.routes.draw do
  devise_for :admins
  resources :pools
  get 'pools/:id/ph' => 'pools#show_history_ph', as: 'ph_pool' 
  get 'pools/:id/cloro' => 'pools#show_history_cl2', as: 'cl2_pool' 
  get 'pools/:id/temp' => 'pools#show_history_temp', as: 'temp_pool' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pools#index'
  
end
