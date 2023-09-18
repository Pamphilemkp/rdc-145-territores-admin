Rails.application.routes.draw do
  devise_for :devise_users, controllers: {
    registrations: 'devise/registrations'
  }
  
  resources :ambassadors
  resources :provinces
  resources :users
  resources :participants
  resources :sponsors

  root  to: redirect('/admin')
end
