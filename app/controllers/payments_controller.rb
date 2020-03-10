class PaymentsController < ApplicationController
  def new
    @booking = current_user.bookings.where(status: 1).find(params[:booking_id])
    authorize @booking
  end

  def confirmation_payment
      # @location = Location.find(params[:location_id])
      @booking = Booking.find(params[:booking_id])
      # authorize @location
      authorize @booking
  end
end
