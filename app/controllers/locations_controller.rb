class LocationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_location, only: [:show]

  def index
    if params[:query].present?
      @locations = SearchService.new(params[:query]).call
    else
       @locations = Location.all
    end
    @locations = policy_scope(@locations)
  end

  def show
    authorize @location
    @markers = [{lng: @location.longitude, lat: @location.latitude}]
  end

  def new
    @location = Location.new
    authorize @location
  end

  def create
    raise
    @location = Location.new(location_params)
    @location.user = current_user
    if @location.save
      redirect_to location_path(@location)
    else
      render :new
    end
  end

  private

  def categories
    arr = []
    Category.all.each do |category|
      arr << category.name
    end
    arr
  end

    private

  def location_params
    params.require(:location).permit(:name, :price, :address, :description, :category, photos: [])
  end

  def set_location
    @location = Location.find(params[:id])
  end
end
