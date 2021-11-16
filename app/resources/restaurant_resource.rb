class RestaurantResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :address, :string
  attribute :neighborhood, :string

  # Direct associations

  has_many   :favorite_dishes,
             resource: FavoriteResource

  # Indirect associations

  many_to_many :dishes
end
