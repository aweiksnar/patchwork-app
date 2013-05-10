class Topic < ActiveRecord::Base
  has_many :subtopics
  has_many :articles, through: :subtopics
  belongs_to :category

  validates :title, :uniqueness => true
  validates :title, :presence => true
end
