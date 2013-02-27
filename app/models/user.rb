class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :provider, :uid
  # attr_accessible :title, :body
  
  has_many :trackers, :dependent => :destroy
  has_many :mobile_phones, :dependent => :destroy
  
  def to_s
    email
  end
    
end
