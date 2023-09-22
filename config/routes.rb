Rails.application.routes.draw do
  devise_for :devise_users
  
  resources :ambassadors
  resources :provinces
  resources :users
  resources :participants
  resources :sponsors

  root  to: redirect('/admin')
end
