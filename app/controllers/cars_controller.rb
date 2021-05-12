class CarsController < ApplicationController
  def show
    @car = Car.find(params[:id])
  end

  def index
    @cars = Car.active.limit(20)
  end

  def new
    @car = Car.new
  end

  def create
    car_params = params.require(:car).permit(:model, :brand, :year, :new_model, :price, :dealership_id, :production_date)
    @car = Car.new(car_params)
    if @car.save
      redirect_to @car
      return
    end
    respond_to do |format|
        format.html { render :new, status: :unprocessable_entity }
        puts "errrrrrr"
        puts @car.errors.inspect
    end


  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    car_params = params.require(:car).permit(:model, :brand, :year, :new_model, :price, :dealership_id, :production_date)


    if @car.update(car_params)
      redirect_to @car
      return
    end
    respond_to do |format|
      format.html { render :new, status: :unprocessable_entity }
      puts "errrrrrr"
      puts @car.errors.inspect
    end

  end

end
