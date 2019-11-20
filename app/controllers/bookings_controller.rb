class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @dinosaur = Dinosaur.find(params[:dinosaur_id])
    authorize @booking
  end

  def create
    @booking = Booking.new(params[:id])
    # this is for the pundit
    authorize @booking

    @booking.user = current_user
    @booking.save
    redirect_to @booking
  end
end
