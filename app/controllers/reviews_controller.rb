class ReviewsController < ApplicationController
  def index
    @location = Location.find(params[:location_id])
    @reviews = Review.select { |review| review.location_id == @location.id}
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    authorize @review
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(params.require(:review).permit(:content, :rating))
    @review.booking = @booking
    @review.user = current_user
    authorize @review
    if @review.save
      redirect_to dashboard_path
    else
      render :new
    end
  end
end
