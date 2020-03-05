class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def profile
    @user = User.find(params[:username])
    @location_reviews = []
    @user_reviews = []
    @bookings = []
    @reviews = []
    @user.locations.each do |location|
      location.bookings.each do |booking|
        @reviews << booking.reviews
      end
    end
    # @bookings.each do |booking|
    #   booking.reviews.each do |review|
    #     @reviews << review
    #   end
    # end
    @reviews.flatten!
    @reviews.each do |review|
      if @user == review.booking.user
        @user_reviews << review
      elsif @user == review.booking.location.user
        @location_reviews << review
      end

    end
    @user_reviews
    @location_reviews
  end
end
