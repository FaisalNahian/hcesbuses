class Tracker < ActiveRecord::Base
  belongs_to :bus
  belongs_to :user
  
  attr_accessible :active, :bus_id, :track, :user_id
  
  validates :active, :bus_id, :track, :user_id, :presence => true
  validates :bus_id, :user_id, :track, :numericality => true
  validates :active, :inclusion => { :in => [true, false] }
  
  def self.active
    where(:active => true)
  end
end
