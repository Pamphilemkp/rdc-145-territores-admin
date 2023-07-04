Rails.application.routes.draw do
  devise_for :users
  resources :participants
  resources :sponsors
  resources :users

  root  to: redirect('/admin')
end
