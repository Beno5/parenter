class UsersController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :find_index, only: %i[show]

  def index
    if params[:query].present?
      @users = User.where("address ILIKE ?", "%#{params[:query]}%").where(is_nanny: true)
      @markers = @users.geocoded.map do |user|
        {
          lat: user.latitude,
          lng: user.longitude
        }
      end
    else
      @users = User.where(is_nanny: true)
      @markers = @users.geocoded.map do |user|
        {
          lat: user.latitude,
          lng: user.longitude
        }
      end
    end
  end

  def show
    @schedule = Booking.where(nanny_id: params[:id]).map {|booking| {title: "Occupied", start: booking.start_date.iso8601, end: booking.end_date.iso8601 } }.to_json
    # start: '2020-11-26T12:00:00',
    # end: '2020-11-26T23:30:00',
    @booking = Booking.new
    @parent = current_user

  end

  private

  def find_index
    @user = User.find(params[:id])
  end
end
