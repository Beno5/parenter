module BookingsHelper
  def events_hash(bookings, role = :visitor)
    data = bookings.map do |booking|
      title = 'Occupied'
      duration = (booking.end_date - booking.start_date)/3600
      if role == :nanny
        title = "#{booking.parent.first_name} - #{duration}h"
      elsif role == :parent
        title = "#{booking.nanny.first_name} - #{duration}h"
      end
      if title == 'Occupied'
        color = '#F49CB0'
      else
        color = ['#F49CB0', '#F4B29C', '#CB9CF4', '#F49CDA'].sample
      end
      {
        title: title,
        start: booking.start_date.iso8601,
        end: booking.end_date.iso8601,
        backgroundColor: color,
        borderColor: color,
        url: root_path
      }
    end
    data.to_json
  end
end
