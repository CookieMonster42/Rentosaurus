class BookingsController < ApplicationController
  def new
    @booking = Booking.new
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
