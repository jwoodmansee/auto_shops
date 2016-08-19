class CarsController < ApplicationController
  before_action :shop
  before_action :car, except: [:index, :new, :create]

  def index
    @cars = @shop.cars
  end

  def show
  end

  def new
    @car = Car.new
  end

  def create
    @car = @shop.cars.new(car_params)
      if @car.save
        redirect_to shop_car_path(@shop, @car)
      else
        render :new
      end
  end

  def edit
  end

  def update
    if @car.update(car_params)
      redirect_to shop_car_path(@shop, @car)
    else
      render :edit
    end
  end

  def destroy
    @car.destroy
    redirect_to shop_cars_path(@shop)
  end

  private

  def car_params
    params.require(:car).permit(:make, :model, :year, :milage, :issue)
  end

  def shop
    @shop = Shop.find(params[:shop_id])
  end

  def car
    @car = @shop.cars.find(params[:id])
  end
end
