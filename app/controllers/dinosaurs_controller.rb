class DinosaursController < ApplicationController
  def index
    @dinosaurs = Dinosaur.all
  end

  def new
    @dinosaur = Dinosaur.new
  end

  def create
    @dinosaur = Dinosaur.new(dinosaur_params)
    if @dinosaur.save
      redirect_to @dinosaur, notice: 'Dinosaur was successfully created.'
    else
      render :new
    end
  end

  def show
    @dinosaur = Dinosaur.find(params[:id])
  end

  def destroy
    @dinosaur = Dinosaur.find(params[:id])
    @dinosaur.destroy
    redirect_to dinosaur_path
  end

  private

  def dinosaur_params
    params.require(:dinosaur).permit(:name)
    # :species, :age, :gender, :food, :price, :policy, :habits, :location
  end
end
