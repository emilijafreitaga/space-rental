class ReviewsController < ApplicationController
  def new
    @user = current_user
    @space = Space.find(params[:space_id])
    @booking = Booking.find_by(user_id: @user.id, space_id: @space.id)
    @review = Review.new
  end

  def create
    @user = current_user
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to space_path(@booking.space)
    else
      render 'spaces/show', status: :unprocessable_entity
    end
  end

  def average_rating
    @reviews = Review.all
    @space = Space.find(params[:space_id])

  end
  
  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
