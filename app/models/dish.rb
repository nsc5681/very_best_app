class Dish < ApplicationRecord
  # Direct associations

  has_many   :favorites,
             dependent: :destroy

  belongs_to :cuisine

  # Indirect associations

  has_many   :restaurants,
             through: :favorites,
             source: :restaurant

  # Validations

  # Scopes

  def to_s
    meal_type
  end
end
