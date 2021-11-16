class AddAddressLongitudeToRestaurant < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :address_longitude, :float
  end
end
