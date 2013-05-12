class Vote < ActiveRecord::Base
  attr_accessible :article_id, :timestamps, :user_id
end
