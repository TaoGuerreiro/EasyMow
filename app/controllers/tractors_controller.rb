class TractorsController < ApplicationController

  def index
    @tractors = Tractor.geocoded


    @markers = @tractors.map do |tractor|
      {
        lat: tractor.latitude,
        lng: tractor.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { tractor: tractor }),
        image_url: helpers.asset_url('feuille.png')
      }
    end
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
