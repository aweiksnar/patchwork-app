class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :category_title
    end
  end
end
