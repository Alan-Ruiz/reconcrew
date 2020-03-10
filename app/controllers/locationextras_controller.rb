class LocationextrasController < ApplicationController

  def create
    @location = Location.find(params[:location_id])
    @locationextras = Locationextra.new(set_params)
    @locationextras.location = @location
    authorize @location
    authorize @locationextras
      if @locationextras.save
        flash[:alert] = 'This extra has been saved'
      else
        flash[:alert] = 'This extra already exists'
      end
    redirect_to location_path(@location)
  end

  private

  def set_params
    params.require(:locationextra).permit(:extra_id)
  end
end
