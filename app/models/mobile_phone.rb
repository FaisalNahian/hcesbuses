class MobilePhone < ActiveRecord::Base
  attr_accessible :carrier, :number, :user_id
  
  belongs_to :user
  
end
