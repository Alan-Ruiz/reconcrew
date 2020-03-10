class Locations::AvailabilitiesController < ApplicationController
  skip_after_action :verify_policy_scoped, only: :index

  def index
    location = Location.find(params[:location_id])

    start_date = Date.new(params[:year].to_i, params[:month].to_i + 1)
    end_date = start_date.end_of_month

    render json: location.available_dates(start_date, end_date)
  end
end
