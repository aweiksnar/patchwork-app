class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :topic_title
      t.integer :category_id
    end
  end
end
