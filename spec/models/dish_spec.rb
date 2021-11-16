require "rails_helper"

RSpec.describe Dish, type: :model do
  describe "Direct Associations" do
    it { should have_many(:favorites) }

    it { should belong_to(:cuisine) }
  end

  describe "InDirect Associations" do
    it { should have_many(:restaurants) }
  end

  describe "Validations" do
  end
end
