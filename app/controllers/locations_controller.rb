class LocationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @locations = SearchService.new(params[:query]).call
    else
       @locations = Location.all
    end
    @locations = policy_scope(@locations)
  end

  def show
    set_location
    authorize @location
    # locations = Location.geocoded
    # geocoded_location = locations.where(id: params[:id])
    # @markers = geocoded_location.map do |location|
    #   {
    #     lat: location.latitude,
    #     lng: location.longitude,
    #     infoWindow: render_to_string(partial: "info_window", locals: { location: location })
    #   }
    # end
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
