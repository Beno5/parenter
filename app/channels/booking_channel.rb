class BookingChannel < ApplicationCable::Channel
  def subscribed
    raise
    @booking = Booking.find(params[:booking_id])
    stream_for booking
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
