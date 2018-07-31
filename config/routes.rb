Rails.application.routes.draw do
  post 'usuario_token' => 'usuario_token#create'
  get 'usuario/current' => 'usuario#current'
  resources :usuarios
  get 'tarjetas' => 'tarjetas#index'
  get 'tarjetas/getbyid/:id_usuario' => 'tarjetas#getbyid'
  resources :tarjetas
  get 'descuentos/getByCodigo/:codigo' => 'descuentos#getByCodigo'
  resources :descuentos
  post 'recorridos' => 'recorridos#create'
  get 'recorridos/getbyid/:id_usuario' => 'recorridos#getbyid'
  resources :recorridos
end
