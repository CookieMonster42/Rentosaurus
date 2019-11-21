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
    @booking = Booking.new(booking_params)
    # this is for the pundit
    authorize @booking
    @booking.dinosaur = Dinosaur.find(params[:dinosaur_id])
    @booking.user = current_user
    if @booking.save!
      redirect_to account_path(:id)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def destroy
    @booking = Booking.find(params[:id])
    # this is for the pundit
    authorize @booking
    @booking.destroy
    redirect_to account_path
  end

  private

  def booking_params
    params.require(:booking).permit(:time_start, :time_end)
  end
end
