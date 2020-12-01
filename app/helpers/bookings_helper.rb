module BookingsHelper
  def events_hash(bookings, role = :visitor)
    data = bookings.map do |booking|
      title = 'Occupied'
      if role == :nanny
        title = booking.parent.first_name
      elsif role == :parent
        title = booking.nanny.first_name
      end
      {
        title: title,
        start: booking.start_date.iso8601,
        end: booking.end_date.iso8601,
        backgroundColor: '#F49CB0',
        borderColor: '#F49CB0',
        url: root_path
      }
    end
    data.to_json
  end
end