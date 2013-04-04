class TwitterMonitor
  
  def self.tweets_since(tweet_id)
    begin
      Twitter.user_timeline('hcesbuses', :since_id => tweet_id, :count => 100).reverse
    rescue Twitter::Error::ClientError
      nil
    end
  end
  
  def self.process_new_tweets_since(tweet_id)
    TwitterMonitor.tweets_since(tweet_id).each do |tweet|
      Bus.all.each do |bus|
        regex = Regexp.new(bus.twitter_regex)
        if regex.match(tweet.text)
          TwitterMonitor.send_notifications(bus, tweet)
          bus.update_attributes(last_tweet: tweet.id)
        end
      end
    end
  end
  
  def self.send_notifications(bus, tweet)
    # Find active monitors on this bus
    Tracker.active.where(:track => Track.in_session_now, :bus_id => bus.id).each do |tracker|
      print "Sending notification about bus #{bus} to user #{tracker.user}.  Tweet text: #{tweet.text}\n"
      tracker.user.mobile_phones.each do |phone|
        TextWorker.perform_async(phone.number, phone.carrier, tweet.text)
      end
    end
  end
  
  def self.run_notification
    last_tweet = Bus.maximum(:last_tweet)
    # last_tweet = 304705110607556608
    TwitterMonitor.process_new_tweets_since(last_tweet)
  end
    
end
