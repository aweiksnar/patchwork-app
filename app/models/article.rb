class Article < ActiveRecord::Base
  attr_accessible :title, :url, :bookmark, :description , :subtopic_id, :level, :user_id
  belongs_to :subtopic
  belongs_to :topic
  belongs_to :user

  has_many :votes
  has_many :users, :through => :votes

  def display_level
    skill_level = Article.find_by_level(self.level).level
    if skill_level == 1
      return "Beginner"
    elsif skill_level == 2
      return "Intermediate"
    elsif skill_level == 3
      return "Advanced"
    else
      return "No Level Selected"
    end
  end

  validates :title, :description, :url, :presence => true

end
