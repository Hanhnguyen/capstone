class AddMoreInfoToCard < ActiveRecord::Migration
  def change
  	add_column :cards, :more_info, :text 
  end
end
