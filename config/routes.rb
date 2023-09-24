Rails.application.routes.draw do
  devise_for :devise_users
  
  resources :ambassadors do
    member do
      post :accept_application
    end
  end
  resources :provinces
  resources :users do
    member do
      post 'create_login'
    end
  end
  resources :participants
  resources :sponsors

  root  to: redirect('/admin')
end
