Rails.application.routes.draw do
  devise_for :users
  root 'phones#index'
  resources :phones
  resources :phone_arquivos
end
