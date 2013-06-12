class Vote < ActiveRecord::Base
  attr_accessible :article_id, :timestamps, :user_id

  belongs_to :user
  belongs_to :article

  validates_uniqueness_of :article_id, :scope => :user_id

  before_save :increase_number_of_article_votes

  def increase_number_of_article_votes
    a = self.article
    a.number_of_votes += 1
    a.save
  end

end
