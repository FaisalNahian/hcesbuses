twitter_yml = YAML.load_file(File.join(Rails.root, "config","twitter.yml"))

Twitter.configure do |config|
  config.consumer_key = twitter_yml['consumer_key']
  config.consumer_secret = twitter_yml['consumer_secret']
  config.oauth_token = twitter_yml['oauth_token']
  config.oauth_token_secret = twitter_yml['oauth_token_secret']
end
