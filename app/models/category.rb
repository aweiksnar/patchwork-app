class Category < ActiveRecord::Base
  has_many :topics, dependent: :destroy

  validates :title, :uniqueness => true
  validates :title, :presence => true
end
