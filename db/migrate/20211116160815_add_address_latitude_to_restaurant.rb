class AddAddressLatitudeToRestaurant < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :address_latitude, :float
  end
end
