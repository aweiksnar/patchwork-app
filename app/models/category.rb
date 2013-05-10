class Category < ActiveRecord::Base
  has_many :topics

  validates :title, :uniqueness => true
  validates :title, :presence => true

end
