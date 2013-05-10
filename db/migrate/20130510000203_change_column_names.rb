class ChangeColumnNames < ActiveRecord::Migration
  def up
    rename_column :subtopics, :subtopic_title, :title
    rename_column :articles, :article_title, :title
    rename_column :topics, :topic_title, :title
    rename_column :categories, :category_title, :title
  end

  def down
  end
end
