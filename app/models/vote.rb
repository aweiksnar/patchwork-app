class Vote < ActiveRecord::Base
  attr_accessible :article_id, :timestamps, :user_id

  belongs_to :user
  belongs_to :article


  validates_uniqueness_of :article_id, :scope => :user_id
end
