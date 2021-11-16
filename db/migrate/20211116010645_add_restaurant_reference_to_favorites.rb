class AddRestaurantReferenceToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :favorites, :restaurants
    add_index :favorites, :restaurant_id
    change_column_null :favorites, :restaurant_id, false
  end
end
