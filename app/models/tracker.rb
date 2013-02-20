class Tracker < ActiveRecord::Base
  belongs_to :bus
  belongs_to :user
  
  attr_accessible :active, :bus_id, :track, :user_id
end
