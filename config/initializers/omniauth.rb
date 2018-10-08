Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :magento, 'set_dynamically', 'set_dynamically',
      callback_path: '/magentos',
      setup: (lambda do |env|
        env['omniauth.strategy'].options[:client_options][:site] = ENV['MAGENTO_URL']
        env['omniauth.strategy'].options[:consumer_key] = ENV['MAGENTO_CONSUMER_KEY']
        env['omniauth.strategy'].options[:consumer_secret] = ENV['MAGENTO_CONSUMER_SECRET']
      end)
end
