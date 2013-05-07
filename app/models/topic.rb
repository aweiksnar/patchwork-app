class Topic < ActiveRecord::Base
  has_many :subtopics
  belongs_to :category

  validates :topic_title, :uniqueness => true
  validates :topic_title, :presence => true
end
