class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def account
    @dinosaurs = Dinosaur.all
  end
end
