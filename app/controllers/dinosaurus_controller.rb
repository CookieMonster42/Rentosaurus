class DinosaurusController < ApplicationController
  def index
    @dinosaurs = Dinosaur.new
  end
end
