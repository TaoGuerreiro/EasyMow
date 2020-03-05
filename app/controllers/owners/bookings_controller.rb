class Owners::BookingsController < ApplicationController
    before_action :find_booking, only: [:accepted, :refuse]

  def index
    @bookings = current_user.bookings
  end

  def accepted
    @booking.status = true
  end

  def refuse
    @booking.status = false
  end

  private

  def find_booking
    @booking = Booking.find(params[:booking_id])
  end
end
