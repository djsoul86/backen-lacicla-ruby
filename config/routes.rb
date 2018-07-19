Rails.application.routes.draw do
  post 'usuario_token' => 'usuario_token#create'
  get 'usuario/current' => 'usuario#current'
  resources :usuarios
  namespace 'api' do
    resources :usuarios
  end
end
