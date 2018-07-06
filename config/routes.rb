Rails.application.routes.draw do
  namespace 'api' do
    resources :usuarios
   end
end
