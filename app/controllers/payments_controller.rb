class PaymentsController < ApplicationController
  def new
    @booking = current_user.bookings.where(status: 1).find(params[:booking_id])
    authorize @booking
  end
end
