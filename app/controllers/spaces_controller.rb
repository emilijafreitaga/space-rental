class SpacesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index
  def index
    @spaces = Space.all
  end

  def show
    @space = Space.find(params[:id])
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.save
    redirect_to spaces.path
  end

  def edit
    @space = Space.find(params[:id])
  end

  def update
  end

  def destroy
    @space = Space.find(params[:id])
    @space.destroy
    redirect_to spaces.path
  end

  private

  def space_params
    params.require(:space).permit(:place_name, :address, :category, :description, :max_capacity, :price_per_booking)
  end
end
