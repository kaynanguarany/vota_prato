Rails.application.routes.draw do

  resources :qualificacoes

  resources :clientes

  resources :restaurantes
  
  match 'ola' => 'ola_mundo#index', via: 'get'

end
