class Bus < ActiveRecord::Base
  attr_accessible :last_tweet, :name, :twitter_regex
  
  has_many :trackers, :dependent => :destroy
  
  validates :last_tweet, :name, :twitter_regex, :presence => true
  validates :last_tweet, :numericality => true
  
  def to_s
    name
  end
end
