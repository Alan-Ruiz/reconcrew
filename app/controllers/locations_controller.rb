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

  private

  def categories
    arr = []
    Category.all.each do |category|
      arr << category.name
    end
    arr
  end
end
