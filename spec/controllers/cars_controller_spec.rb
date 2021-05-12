require 'rails_helper'
RSpec.describe CarsController, type: :controller do
  after(:all) do
    DatabaseCleaner.clean_with(:truncation)
  end
  describe "GET index" do
    it "fails this third example" do
      user = User.create! do |u|
        u.email     = 'test_admin@test.com'
        u.password  = 'password'
        u.superadmin_role = true
      end
      sign_in user
      car = Car.create(price: 1000, model: "mustang", brand: "ford", year: 2018, new_model: false, production_date: Date.today)

      get :index
      expect(response).to have_http_status(:success)
      expect(assigns(:cars)).to eq([car])

    end


  end
end