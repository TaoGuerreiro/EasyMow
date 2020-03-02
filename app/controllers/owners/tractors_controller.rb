class Owners::TractorsController < ApplicationController

  def index
    @tractors = current_user.tractors
  end

  private

  def tractor_params
    params.require(:tractor).permit(:photo, :title, :descritpion, :price_per_day)
  end
end
