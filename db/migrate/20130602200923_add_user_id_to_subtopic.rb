class AddUserIdToSubtopic < ActiveRecord::Migration
  def change
    add_column :subtopics, :user_id, :integer
  end
end
