class ReviewsController < ApplicationController
  def index
    @location = Location.find(params[:location_id])
    @reviews = Review.select { |review| review.location_id == @location.id}
  end

  def new
    @location = Location.find(params[:location_id])
    @review = Review.new
  end

  def create
    @location = Location.find(params[:location_id])
    @review = Review.new(params.require(:review).permit(:description, :rating))
    @review.location = @location
    @review.user = current_user
    if @review.save
      redirect_to dashboard_path
    else
      render :new
    end
  end
end
