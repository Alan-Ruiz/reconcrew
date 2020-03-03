class PaymentsController < ApplicationController
  def new
    @order = current_user.bookings.where(state: :pending).find(params[:booking_id])
  end
end
