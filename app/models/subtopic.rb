class Subtopic < ActiveRecord::Base
  attr_accessible :title, :topic_id

  has_many :articles
  belongs_to :topic

  validates :title, :uniqueness => true, :presence => true
end
