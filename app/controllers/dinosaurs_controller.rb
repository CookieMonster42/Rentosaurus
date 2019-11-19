class DinosaursController < ApplicationController
  def index
    @dinosaurs = Dinosaur.all
  end

  def new
    @dinosaur = Dinosaur.new
  end

  def create
    @dinosaur = Dinosaur.create(dinosaur_params)
    redirect_to dinosaur_path(@dinosaur)
  end

  private

  def dinosaur_params
    params.require(:dinosaur).permit(:name, :species, :age, :gender, :food, :price, :policy, :habits, :location)
  end
end
