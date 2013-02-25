class Bus < ActiveRecord::Base
  attr_accessible :last_tweet, :name, :twitter_regex
  
  has_many :trackers
  
  def to_s
    name
  end
end
