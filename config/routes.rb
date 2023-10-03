Rails.application.routes.draw do
  devise_for :devise_users
  
  resources :ambassadors do
    member do
      post :accept_application
    end
  end
  resources :provinces
  resources :users
  resources :participants
  resources :sponsors

  root  to: redirect('/devise_users/sign_in')
end
