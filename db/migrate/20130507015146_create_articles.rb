class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :article_title
      t.string :url
      t.boolean :bookmark
      t.text :what_description
      t.text :why_description
      t.integer :subtopic_id
    end
  end
end
