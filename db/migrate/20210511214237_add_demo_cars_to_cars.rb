class AddDemoCarsToCars < ActiveRecord::Migration[6.1]
  def change
    Car.create(price: 1000, model: "mustang", brand: "ford", year: 2018, new: false)
    Car.create(price: 1000, model: "cadillac", brand: "cadillac", year: 2020, new: true)
    Car.create(price: 1000, model: "honda", brand: "civic", year: 2014, new: false)
    Car.create(price: 1000, model: "tesla", brand: "1", year: 2021, new: true)
  end
end
