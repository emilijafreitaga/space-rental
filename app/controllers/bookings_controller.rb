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
        redirect_to dashboard_path, notice: "Your booking request has been sent 💌 "
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
      redirect_to dashboard_path, notice: "Your booking has been updated 🎉 "
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def brequest
    @booking = Booking.find(params[:id])
    if @booking.update(request_params)
      render json: { confirmed: @booking.confirmed }
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path, status: :see_other, notice: "Your booking has been deleted 💥"
  end

  def booking_params
    params.require(:booking).permit(:date, :covers, :confirmed)
  end

  def request_params
    params.require(:booking).permit(:confirmed)
  end
end
