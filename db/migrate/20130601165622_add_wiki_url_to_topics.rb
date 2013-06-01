class AddWikiUrlToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :wiki_url, :string
  end
end
