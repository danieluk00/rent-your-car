class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new] #delete :new later

  def index
    @cars = Car.all
  end

  def create
    @car = Car.create(car_params)
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def new
    @car = Car.new
  end

  def show
    @car = Car.find(params[:id])
  end

  def search_by_location(location)
    @cars = Car.where(location: location)
  end

  # def search_by_date(from_date, to_date)
  #   @cars = Car.where()
  # end

  private

  def car_params
    params.require(:car).permit(:engine_type, :brand, :model, :price, :location, :description)
  end
end
