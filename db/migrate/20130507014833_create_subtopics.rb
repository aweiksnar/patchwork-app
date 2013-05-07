class CreateSubtopics < ActiveRecord::Migration
  def change
    create_table :subtopics do |t|
      t.string :subtopic_title
      t.integer :topic_id
    end
  end
end
