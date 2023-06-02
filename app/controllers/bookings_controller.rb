class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end
  # No need as we are booking directly from space show page
  # def new
  #   @booking = Booking.new
  #   @space = Space.find(params[:space_id])
  # end

  def create
    @booking = Booking.new(booking_params)
    @space = Space.find(params[:space_id])
    @booking.space = @space
    @booking.user = current_user
      if @booking.save
        redirect_to dashboard_path
      else
        render "spaces/show", status: :unprocessable_entity
      end
  end

  def edit
    @booking = Booking.find(params[:id])
    @space = Space.find(params[:space_id])
  end

  def update
    @booking = Booking.find(params[:id])
    # @space = Space.find(params[:space_id])
    if @booking.update(booking_params)
      redirect_to dashboard_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path, status: :see_other
  end

  def booking_params
    params.require(:booking).permit(:date, :covers, :confirmed)
  end
end
