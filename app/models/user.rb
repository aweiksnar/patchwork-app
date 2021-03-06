class User < ActiveRecord::Base
  attr_accessible :email, :username, :password, :password_confirmation, :admin

  has_many :articles

  has_many :votes
  has_many :articles, :through => :votes

  validates :username, :email,  :uniqueness => true
  has_secure_password

  before_validation do |user|
    user.email = user.email.downcase
  end

  # validates :password, :length => {:minimum => 6 }, :presence => true

  validate :password_must_be_6_chars

  def password_must_be_6_chars
    unless self.password.length >= 6
      errors.add(:password, " must be at least 6 characters long")
    end
  end

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


