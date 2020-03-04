class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.tractor = Tractor.find(params[:tractor_id])
    @booking.total_price = ((@booking.ending_date - @booking.starting_date).to_i * @booking.tractor.price_per_day)
    @booking.save!
    redirect_to bookings_path
  end


private

  def booking_params
    params.require(:booking).permit(:status, :total_price, :starting_date, :ending_date, :tractor_id, :user_id)
  end
end
