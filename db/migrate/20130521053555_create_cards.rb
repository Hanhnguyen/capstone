class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :description
      t.references :city
      t.timestamps
    end
  end
end
