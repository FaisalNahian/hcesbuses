class MobilePhone < ActiveRecord::Base
  attr_accessible :carrier, :number, :user_id, :label
  
  belongs_to :user
  
end
