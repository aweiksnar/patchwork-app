class Topic < ActiveRecord::Base
  has_many :subtopics
  belongs_to :category

  validates :title, :uniqueness => true
  validates :title, :presence => true
end
