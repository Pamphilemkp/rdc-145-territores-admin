require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Rdc145TerritoresAdmin
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    config.action_controller.default_protect_from_forgery = false

    # Configuration for the application, engines, and railties goes here.
    config.middleware.use ActionDispatch::Flash
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'https://rdc145territoires.com' # Replace with the actual origin of your React application
    
        resource '*',
          headers: :any,
          methods: [:get, :post, :put, :patch, :delete, :options],
          credentials: true
      end
    end
    

    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
