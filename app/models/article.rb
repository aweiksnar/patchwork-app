class Article < ActiveRecord::Base
  attr_accessible :title, :url, :bookmark, :description , :subtopic_id, :level, :user_id
  belongs_to :subtopic
  belongs_to :topic
  belongs_to :user

  has_many :votes
  has_many :users, :through => :votes

  def display_level
    l =  Article.find_by_level(self.level).level
    if l == 1
      return "Beginner"
    elsif l == 2
      return "Intermediate"
    elsif l == 3
      return "Advanced"
    else
      return "No Level Selected"
    end
  end
  #removed titles from validations
  validates :title, :description, :url, :presence => true

end
