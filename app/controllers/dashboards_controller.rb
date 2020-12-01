class DashboardsController < ApplicationController
  def index
    @parent = current_user
    @bookings = Booking.all
    @schedule = helpers.events_hash(Booking.where(parent: current_user), :parent)
  end

end
