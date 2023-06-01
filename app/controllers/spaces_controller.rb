class SpacesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @spaces = Space.all
    @markers = @spaces.geocoded.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {space: space}),
        marker_html: render_to_string(partial: "marker", locals: {space: space})
      }
    end
  end

  def show
    @space = Space.find(params[:id])
    @booking = Booking.new
    @user = current_user
    @booking1 = Booking.find_by(user_id: @user.id, space_id: @space.id)
    @review = Review.new
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    @space.save
    redirect_to spaces_path
  end

  def edit
    @space = Space.find(params[:id])
  end

  def update
    @space = Space.find(params[:id])
    @space.update(space_params)
    redirect_to space_path(@space)
  end

  def destroy
    @space = Space.find(params[:id])
    @space.destroy
    redirect_to spaces_path
  end

  private

  def space_params
    params.require(:space).permit(:place_name, :address, :category, :description, :max_capacity, :price_per_booking, photos: [])
  end
end
