class DinosaurusController < ApplicationController
  def index
    @dinosaurs = Dinosaur.all
  end
end
