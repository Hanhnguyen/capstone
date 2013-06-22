class AddIdToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :id, :primary_key
  end
end
