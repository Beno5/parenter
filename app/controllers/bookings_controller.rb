class BookingsController < ApplicationController
  before_action :find_booking_index, only: %i[show edit update destroy approve decline]

  def show
    @message = Message.new
  end

  def new
    @booking = Booking.new
    @user_nanny = User.find(params[:nanny_id])
    @booking.nanny = @user_nanny
  end

  def create
    @user_nanny = User.find(params[:booking][:nanny_id])
    @booking = Booking.new(booking_params)
    @booking.parent = current_user
    @booking.status = "pending"

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
    redirect_to dashboards_path
  end

  def approve
    @booking.status = "confirmed"
    @booking.save!
    redirect_to dashboards_path
  end

  def decline
    @booking.status = "declined"
    destroy
    redirect_to dashboards_path
  end

  private

  def find_booking_index
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :nanny_id)
  end
end
