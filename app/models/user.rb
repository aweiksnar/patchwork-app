class User < ActiveRecord::Base
  attr_accessible :email, :username, :password, :password_confirmation


  validates :username, :email,  :uniqueness => true
  has_secure_password
end
