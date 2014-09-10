class AddCategorytoLocations < ActiveRecord::Migration
  def change
  	add_column :locations, :category_ID, :integer
    add_column :locations, :open, :boolean
  end
end
