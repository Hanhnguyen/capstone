class AddLongitudeToCards < ActiveRecord::Migration
  def change
    add_column :cards, :longitude, :float
  end
end
