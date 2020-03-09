class LocationextrasController < ApplicationController
  def create
    @location = Location.find(params[:location_id])
    @locationextras = Locationextra.new(params.require(:locationextra).permit[:extra])
    # @locationextras.location = @location
    authorize @location
    authorize @locationextras
    if @locationextras.save
      redirect_to location_path(@location)
    else
      render 'location/show'
    end
  end
end
