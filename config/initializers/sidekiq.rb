Sidekiq::Logging.logger.level = Rails.logger.level

Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://127.0.0.1:6379/12', namespace: 'sidekiq-wat-da-shit' }
  config.poll_interval = 5
end

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://127.0.0.1:6379/12', namespace: 'sidekiq-wat-da-shit' }
end
