class Subtopic < ActiveRecord::Base
  has_many :articles
  belongs_to :topic

  validates :subtopic_title, :uniqueness => true
  validates :subtopic_title, :presence => true
end
