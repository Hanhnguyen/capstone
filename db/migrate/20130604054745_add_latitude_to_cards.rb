class AddLatitudeToCards < ActiveRecord::Migration
  def change
    add_column :cards, :latitude, :float
  end
end
