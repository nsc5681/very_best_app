class FavoriteResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :user_id, :integer
  attribute :dish_id, :integer
  attribute :restaurant_id, :integer

  # Direct associations

  belongs_to :dish

  belongs_to :restaurant

  belongs_to :user

  # Indirect associations
end
