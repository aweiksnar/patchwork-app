class RemoveWhatDescriptionAndWhyDescriptionFromArticles < ActiveRecord::Migration
  def change
    remove_column :articles, :what_description
    remove_column :articles, :why_description
  end
end
