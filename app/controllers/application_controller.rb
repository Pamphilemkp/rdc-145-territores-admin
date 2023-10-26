class ApplicationController < ActionController::Base
  before_action :custom_authentication
  include Pundit::Authorization

  private

  def custom_authentication
    # Check if the 'X-Frontend-Request' header is present
    if request.headers['X-Frontend-Request'] == 'true'
    else
      authenticate_devise_user!
    end
  end

  def after_sign_in_path_for(resource)
    if resource.is_a?(DeviseUser) # Replace with your actual Devise user model
      # Redirect to the ambassador index page
      ambassadors_path
    else
      super
    end
  end
  
end

