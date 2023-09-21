# app/controllers/devise/registrations_controller.rb
class Devise::RegistrationsController < Devise::RegistrationsController
    before_action :redirect_to_login, only: [:new, :create]
  
    private
  
    def redirect_to_login
      redirect_to new_devise_user_session_path
    end
  end
  