class MobilePhone < ActiveRecord::Base
  attr_accessible :carrier, :number, :user_id, :label
  
  before_validation :numberize_phone_number
  
  validates :carrier, :number, :user_id, :presence => true
  validates :carrier, :inclusion => {:in => SMSFu.carriers.keys}
  validates :number, :numericality => true
  
  belongs_to :user
  
  private
  
  def numberize_phone_number
    self.number.gsub!(/\D/,'').to_i
  end
  
end
