Rails.application.routes.draw do
  resources :participants
  resources :sponsors
  resources :users

  root to: redirect('/admin')
end
