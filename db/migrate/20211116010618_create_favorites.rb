class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :dish_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
