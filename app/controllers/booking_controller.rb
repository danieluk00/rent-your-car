class BookingController < ApplicationController
  # def index
  #   @cars = Car.find()
  # end

  def new
    @car = Car.find(params[:car_id])
    @user = current_user
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.status = "pending"
    @car = Car.find(params[:car_id])
    @booking.user = current_user
    @booking.car = @car
    if @booking.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def accept
    update("accepted")
  end

  def reject
    update("rejected")
  end

  def cancel
    update("cancelled")
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def update(status)
    @booking = Booking.find(params[:id])
    @booking.status = status
    @booking.save
    redirect_to dashboard_path
  end
end
