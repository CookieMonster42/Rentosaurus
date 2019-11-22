class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def account
    @bookings = Booking.where(user: current_user)
    @dinosaurs = Dinosaur.all
    @user = current_user
    authorize @user
  end

  def update
    @user = current_user
    authorize @user
    if @user.update(user_params)
      redirect_to account_path(current_user), notice: "Profile pic was updated successfully."
    else
      render :update
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :photo)
  end
end
