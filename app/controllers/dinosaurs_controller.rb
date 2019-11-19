class DinosaursController < ApplicationController
  def index
    @dinosaurs = Dinosaur.all
  end

  def new
    @dinosaur = Dinosaur.new
  end

  def show
    @dinosaur = Dinosaur.find(params[:id])
  end

  def create
    @dinosaur = Dinosaur.create(dinosaur_params)
    @dinosaur.user_id = current_user.id
    if @dinosaur.save
      redirect_to dinosaurs_path
    else
      render "new"

    end
  end

  def update
    @dinosaur.update(dinosaur_params)
    redirect_to dinosaur_path(@dinosaur)
  end

  private

  def dinosaur_params
    params.require(:dinosaur).permit(:name, :species, :age, :gender, :food, :price, :policy, :habits, :location)
  end
end
