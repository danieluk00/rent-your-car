class DashboardsController < ApplicationController

  # Show method display the bookings of the current user and then the cars of the user
  def show
    @user = current_user
    # we get the bookings as a renter of the current user
    @renter_bookings = Booking.where(user: current_user)
   # only the bookings where the user of the car == current_user
    @owner_bookings = Booking.joins(:car).where("cars.user_id = ?", current_user.id)
  end

end
