Rails.application.routes.draw do

  match 'ola' => 'ola_mundo#index', via: 'get'

end
