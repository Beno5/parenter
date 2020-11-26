class DashboardsController < ApplicationController
 
  def index 
    @bookings = Booking.where
  end
end
