class AddLocationToCards < ActiveRecord::Migration
  def change
    add_column :cards, :location, :string
  end
end
