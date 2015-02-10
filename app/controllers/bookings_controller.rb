class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
  end

  def destroy
  end

  private
  def booking_params

  end
end
