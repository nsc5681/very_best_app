require "rails_helper"

RSpec.describe Restaurant, type: :model do
  describe "Direct Associations" do
    it { should have_many(:favorite_dishes) }
  end

  describe "InDirect Associations" do
    it { should have_many(:dishes) }
  end

  describe "Validations" do
  end
end
