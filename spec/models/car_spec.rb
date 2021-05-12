require 'rails_helper'

RSpec.describe Car, type: :model do

  context 'validation car' do
    it "invalid new" do
      car = Car.create
      expect(car.save).to eq(false)
    end
    it "valid new" do
      car = Car.create(price: 1000, model: "mustang", brand: "ford", year: 2018, new_model: false)
      expect(car.save).to eq(true)
    end
    it "invalid price" do
      car = Car.create(price: -1000, model: "mustang", brand: "ford", year: 2018, new_model: false)

      puts car.errors[:price].inspect
      expect(car.save).to eq(false)
      expect(car.errors[:price]).to include("must be greater than 0")

    end
  end

end
