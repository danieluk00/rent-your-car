class DashboardsController < ApplicationController

  def show
    @user = current_user
    @bookings = current_user.bookings
  end

end
