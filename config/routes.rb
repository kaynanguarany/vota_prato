Rails.application.routes.draw do

  resources :restaurantes
  
  match 'ola' => 'ola_mundo#index', via: 'get'

end
