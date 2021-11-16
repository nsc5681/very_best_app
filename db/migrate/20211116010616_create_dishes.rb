class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :meal_type
      t.integer :cuisine_id

      t.timestamps
    end
  end
end
