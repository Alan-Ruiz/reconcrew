class Locations::AvailabilitiesController < ApplicationController
  def index
    byebug
    location = Location.find(params[:location_id])

    render json: location.scheduled_dates(params[:start_date], params[:end_date])
  end
end
