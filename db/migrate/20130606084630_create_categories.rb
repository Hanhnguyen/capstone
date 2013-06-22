class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.references :card
      t.timestamps
    end
  end
end
