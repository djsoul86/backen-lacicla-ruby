Rails.application.routes.draw do
  post 'usuario_token' => 'usuario_token#create'
  get 'usuario/current' => 'usuario#current'
  resources :usuarios
  get 'tarjetas' => 'tarjetas#index'
  get 'tarjetas/getbyid/:id_usuario' => 'tarjetas#getbyid'
  resources :tarjetas
  
end
