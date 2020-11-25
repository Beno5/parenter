class BookingsController < ApplicationController
  before_action :find_booking_index, only: %i[show edit update destroy]

  def show
  end

  def new
    @booking = Booking.new
    @user_nanny = User.find(params[:nanny_id])
    @booking.nanny = @user_nanny
  end

  def create
    @user_nanny = User.find(params[:nanny_id])
    @booking = Booking.new(booking_params)
    @booking.parent = current_user

    if @booking.save!
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
  end

  private

  def find_booking_index
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :nanny_id)
  end
end
