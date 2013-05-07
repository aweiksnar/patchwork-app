class AddLevelToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :level, :integer
  end
end
