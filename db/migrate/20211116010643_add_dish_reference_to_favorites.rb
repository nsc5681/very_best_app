class AddDishReferenceToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :favorites, :dishes
    add_index :favorites, :dish_id
    change_column_null :favorites, :dish_id, false
  end
end
