class DishResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :meal_type, :string
  attribute :cuisine_id, :integer

  # Direct associations

  has_many   :favorites

  belongs_to :cuisine

  # Indirect associations

  many_to_many :restaurants
end
