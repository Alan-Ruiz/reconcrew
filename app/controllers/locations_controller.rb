class LocationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:button] && params[:query] != "" && categories.include?(params[:query])
      @locations = Location.all.select { |location| location.category.name.downcase.include?(params[:query].downcase) }
    elsif params[:button] && params[:query] != ""
      @location = Location.all.select { |location| location.name.downcase.include?(params[:query].downcase) }
    else
      @locations = Location.all
    end
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
    # @rent = Rent.new
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
    params.require(:location).permit(:name, :price, :address, :description, :category, :photo)
  end

  def set_location
    @location = Location.find(params[:id])
  end
end
