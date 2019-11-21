class DinosaursController < ApplicationController
  def index

    # SEARCH
    if params[:query].present?
      @dinosaurs = Dinosaur.near(params[:query])# .where('price < ? AND price < ?', params[:min_price], params[:max_price])
      # @dinosaurs = Dinosaur.where("location ILIKE ?", "%#{params[:query]}%")
    else
      @dinosaurs = Dinosaur.all
    end


    @dinosaur = policy_scope(Dinosaur)

    @geo_coded_dinosaurs = @dinosaurs.geocoded # returns dinos with coordinates

    @markers = @geo_coded_dinosaurs.map do |dino|
      {
        lat: dino.latitude,
        lng: dino.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { dino: dino })
      }
    end


    # Search

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
