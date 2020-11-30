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
    @schedule = "Evenement en preparation"
    # @schedule = nanny_user.bookings
    @booking = Booking.new
    @parent = current_user

  end

  private

  def find_index
    @user = User.find(params[:id])
  end
end
