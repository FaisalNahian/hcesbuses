Sidekiq.configure_server do |config|
  config.redis = { :namespace => 'hcesbuses' }
end

Sidekiq.configure_client do |config|
  config.redis = { :namespace => 'hcesbuses' }
end
