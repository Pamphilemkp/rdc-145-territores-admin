Rails.application.routes.draw do
  resources :speakers do
    member do
      post 'edit'
    end
  end
  devise_for :devise_users
  
  resources :ambassadors do
    member do
      post :accept_application
      post 'edit'
    end
  end
  resources :provinces do
    member do
      post 'edit'
    end
  end
  resources :users do
    member do
      post 'edit'
    end
  end
  resources :participants do
    member do
      post 'edit'
    end
  end
  resources :sponsors do
    member do
      post 'edit'
    end
  end
  root  to: redirect('/devise_users/sign_in')
end
