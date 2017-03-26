Rails.application.routes.draw do

  resources :comentarios

  resources :qualificacoes

  resources :clientes

  resources :restaurantes
  
  match 'ola' => 'ola_mundo#index', via: 'get'

end
