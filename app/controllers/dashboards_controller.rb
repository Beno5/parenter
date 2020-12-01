class DashboardsController < ApplicationController
  def index
   
    @bookings = Booking.all
  end

  
end
