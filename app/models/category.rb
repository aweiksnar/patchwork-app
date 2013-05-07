class Category < ActiveRecord::Base
  has_many :topics

  validates :category_title, :uniqueness => true
  validates :category_title, :presence => true

end
