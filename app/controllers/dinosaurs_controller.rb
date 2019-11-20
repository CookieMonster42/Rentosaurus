class DinosaursController < ApplicationController
  def index
    @dinosaurs = Dinosaur.all
    @club = policy_scope(Dinosaur)

    @dinosaurs = Dinosaur.geocoded #returns dinos with coordinates

    @markers = @dinosaurs.map do |dino|
      {
        lat: dino.latitude,
        lng: dino.longitude
      }
    end
  end

  def new
    @dinosaur = Dinosaur.new
    authorize @dinosaur
  end

  def show
    @dinosaur = Dinosaur.find(params[:id])
    authorize @dinosaur
  end

  def create
    @dinosaur = Dinosaur.create(dinosaur_params)
    @dinosaur.user_id = current_user.id
    authorize @dinosaur
    if @dinosaur.save
      redirect_to dinosaurs_path
    else
      render "new"
    end
  end

  def update
    @dinosaur = Dinosaur.find(params[:id])
    authorize @dinosaur
    if @dinosaur.update(dinosaur_params)
      redirect_to dinosaur_path(@dinosaur), notice: "Dino was updated successfully."
    else
      render :edit
    end
  end

  def edit
    @dinosaur = Dinosaur.find(params[:id])
    authorize @dinosaur
  end

  def destroy
    @dinosaur = Dinosaur.find(params[:id])
    authorize @dinosaur
    @dinosaur.destroy
    redirect_to dinosaurs_path
  end

  private

  def dinosaur_params
    params.require(:dinosaur).permit(:name, :species, :age, :gender, :food, :price, :policy, :habits, :location)
  end
end
