class Owners::BookingsController < ApplicationController
    before_action :find_booking, only: [:accept, :refuse]

  def index
    @bookings = current_user.bookings
  end

  def accept
    @booking.status = 'true'
    @booking.save
    redirect_to owners_bookings_path

  end

  def refuse
    @booking.status = 'false'
    @booking.save
    redirect_to owners_bookings_path
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
