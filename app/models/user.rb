class User < ActiveRecord::Base
  attr_accessible :email, :username, :password, :password_confirmation

  has_many :votes
  has_many :articles, :through => :votes

  validates :username, :email,  :uniqueness => true
  has_secure_password
end
