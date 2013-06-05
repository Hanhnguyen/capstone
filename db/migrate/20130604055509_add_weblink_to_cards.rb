class AddWeblinkToCards < ActiveRecord::Migration
  def change
    add_column :cards, :link, :string
  end
end
