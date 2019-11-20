class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @dinosaur = Dinosaur.find(params[:dinosaur_id])
    authorize @booking
  end

  def index
    @bookings = Booking.all
    @booking = policy_scope(Booking)
  end

  def create
    @booking = Booking.new(params_booking)
    authorize @booking
    @booking.dinosaur = Dinosaur.find(params[:dinosaur_id])
    @booking.user = current_user
    @booking.save!
    redirect_to dinosaur_bookings_path
  end

  private

  def params_booking
    params.require(:booking).permit(:time_start, :time_end, :user, :dinosaur)
  end
end
