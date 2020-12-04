class DashboardsController < ApplicationController
  def index
    @review = Review.new
    @parent = current_user
    if current_user.is_nanny == false
      @bookings = Booking.where(parent: current_user)
    elsif current_user.is_nanny == true
      @bookings = Booking.where(nanny: current_user)
    end
    @schedule = helpers.events_hash(Booking.where(parent: current_user), :parent)
  end
end
