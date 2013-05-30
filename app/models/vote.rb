class Vote < ActiveRecord::Base
  attr_accessible :article_id, :timestamps, :user_id

  belongs_to :user
  belongs_to :article
end
