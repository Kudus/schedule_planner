class BookingsController < ApplicationController
  before_action :authenticate_user!
  authorize_resource
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def create
    @user = current_user
    @booking = Booking.create(params.require(:booking).permit(:course_id, :user_id, :status))
    if @booking.save
      redirect_to user_path(@user)
    else
      render 'index'
    end  
  end

  def destroy
   @booking = Booking.find(params[:id])
   @booking.destroy
   redirect_to user_path(current_user)
  end
end
