class TractorsController < ApplicationController

  def index
    @tractors = Tractor.all

    # @flats = Flat.geocoded #returns flats with coordinates

        # @markers = @tractors.user.map do |flat|
        #   {
        #     lat: flat.latitude,
        #     lng: flat.longitude
        #   }
        # end
  end

  def show
    @tractor = Tractor.find(params[:id])
    @booking = Booking.new
  end

  def new
    @tractor = Tractor.new
  end

  def create
    @tractor = Tractor.new(tractor_params)
    if @tractor.save
      redirect_to tractor_path(@tractor)
    else
      render :new
    end
  end

  private

  def tractor_params
    params.require(:tractor).permit(:photo, :title, :descritpion, :price_per_day)
  end
end
