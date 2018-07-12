Rails.application.routes.draw do
  post 'usuario_token' => 'usuario_token#create'
  get 'usuario/current' => 'usuario#current'
  resources :usuarios
end
