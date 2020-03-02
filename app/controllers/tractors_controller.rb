class TractorsController < ApplicationController

  def index
    @tractors = Tractor.all
  end

  def show
    @tractor = Tractor.find(params[:id])
  end

  # def new
  #   @tractor = Tractor.new
  # end

  # def create
  #   @tractor = Tractor.new(tractor_params)
  #   if @restaurant.save
  #     redirect_to tractor_path(@tractor)
  #   else
  #     render :new
  #   end
  # end

  private

  def tractor_params
    params.require(:tractor).permit(:photo, :title, :descritpion, :price_per_day)
  end
end
