class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def profile
    @user = User.find(params[:username])
    @user_locations = @user.locations
    @location_reviews = []
    @user_reviews = []
    @bookings = []
    @reviews = []
    @user_locations.each do |location|
      location.bookings.each do |booking|
        @bookings << booking
      end
    end
    @bookings.each do |booking|
      booking.reviews.each do |review|
        @reviews << review
      end
    end
    @reviews.each do |review|
      review.user == review.booking.user ? @location_reviews << review : @user_reviews << review
    end
    @user_reviews
    @location_reviews
  end
end
