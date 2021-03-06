class Subtopic < ActiveRecord::Base
  attr_accessible :title, :topic_id, :user_id

  has_many :articles, dependent: :destroy
  belongs_to :topic

  validates :title, :presence => true
end
