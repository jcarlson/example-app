require 'sidekiq/web'

Sidekiq.configure_client { |config| config.redis = Settings.sidekiq.redis.to_h }
Sidekiq.configure_server { |config| config.redis = Settings.sidekiq.redis.to_h }
