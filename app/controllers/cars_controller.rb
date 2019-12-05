class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      @cars = Car.where("location ILIKE ?", "%#{params[:query]}%")
    else
      @cars = Car.geocoded
      @markers = @cars.map do |car|
        {
          lat: car.latitude,
          lng: car.longitude
        }
      end
    end
  end

  def create
    @car = Car.create(car_params)
    @car.user = current_user
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
    @markers = [{
        lat: @car.latitude,
        lng: @car.longitude
      }]
  end

  def search_by_location(location)
    @cars = Car.where(location: location)
  end

  # def search_by_date(from_date, to_date)
  #   @cars = Car.where()
  # end

  private

  def car_params
    params.require(:car).permit(:engine_type, :brand, :model, :price, :location, :photo)
  end
end
