Rails.application.routes.draw do
  post 'usuario_token' => 'usuario_token#create'
  get 'usuario/current' => 'usuario#current'
  resources :usuarios
  get 'tarjetas' => 'tarjetas#index'
  resources :tarjetas
end
