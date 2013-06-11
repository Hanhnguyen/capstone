class AddCategoryIdToCards < ActiveRecord::Migration
  def change
  	 add_column :cards, :category_id, :string
  end
end
