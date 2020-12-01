class UsersController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :find_index, only: %i[show]

  def index
    if params[:query].present?
      @users = User.where("address ILIKE ?", "%#{params[:query]}%").where(is_nanny: true)
      @current_user_geocoded = current_user.geocode #=> [lat, long]
      @current_user_marker = {
        lat: @current_user_geocoded[0],
        lng: @current_user_geocoded[1],
        image_url: current_user.photo.key
      }
      @markers = @users.geocoded.map do |user|
        {
          lat: user.latitude,
          lng: user.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { user: user }),
          image_url: user.photo.key
        }
      end
      @markers << @current_user_marker
    else
      @users = User.where(is_nanny: true)
      @markers = @users.geocoded.map do |user|
        {
          lat: user.latitude,
          lng: user.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { user: user })
        }
      end
    end
  end

  def show
    bookings = Booking.where(nanny: @user)
    role = @user == current_user ? :nanny : :visitor
    @schedule = helpers.events_hash(bookings, role)
    @booking = Booking.new
    @parent = current_user

  end

  private

  def find_index
    @user = User.find(params[:id])
  end
end
