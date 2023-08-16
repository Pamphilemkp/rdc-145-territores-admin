Rails.application.routes.draw do
  resources :ambassadors
  resources :provinces
  resources :users
  resources :participants
  resources :sponsors

  root  to: redirect('/admin')
end
