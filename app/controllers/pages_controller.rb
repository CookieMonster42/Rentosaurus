class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def account
    @user = User.where(name: params[:id]).first
  end
end
