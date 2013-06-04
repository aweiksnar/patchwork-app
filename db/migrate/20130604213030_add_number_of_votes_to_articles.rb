class AddNumberOfVotesToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :number_of_votes, :integer, default: 0
  end
end



