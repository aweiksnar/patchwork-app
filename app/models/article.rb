class Article < ActiveRecord::Base
  belongs_to :subtopic

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
  validates :article_title, :why_description, :what_description, :url, :presence => true
  validates :article_title, :why_description, :what_description, :url, :uniqueness => true

end
