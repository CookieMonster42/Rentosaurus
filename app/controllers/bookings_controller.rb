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
    @booking = Booking.new(params[:id])
    # this is for the pundit
    authorize @booking
    @booking.dinosaur = Dinosaur.find(params[:dinosaur_id])
    @booking.user = current_user
    @booking.save
    redirect_to dinosaur_bookings_path
  end
end
