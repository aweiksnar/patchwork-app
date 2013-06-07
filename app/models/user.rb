class User < ActiveRecord::Base
  attr_accessible :email, :username, :password, :password_confirmation, :admin

  has_many :articles

  has_many :votes
  has_many :articles, :through => :votes

  validates :username, :email,  :uniqueness => true
  has_secure_password

  def vote_points(articles)
    if articles == []
      return 0
    else
      vote_points = []

      articles.each do |article|
        vote_points << article.votes.count
      end

      return vote_points.inject { |sum, x| sum + x }
    end
  end


  def submission_points(articles)
    articles.count
  end

  def total_points(articles)
      vote_points(articles) + submission_points(articles)
  end

end


