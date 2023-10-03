Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'https://rdc145territoires.com' # later change to the domain of the frontend app
      resource '*',
               headers: :any,
               methods: %i[get post put patch delete options head],
               credentials: true
    end
  end