class BookingController < ApplicationController
  def new
    @car = Car.find(params[:car_id])
    @user = current_user
    @booking = Booking.new
  end

  def create
    @booking = Booking.create(booking_params)
    @car = Car.find(params[:car_id])
    @booking.user_id = current_user
    @booking.car_id = @car
    if @booking.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price, :status)
  end
end
