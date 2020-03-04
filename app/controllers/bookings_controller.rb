class BookingsController < ApplicationController
  before_action :set_location, only: [:new, :create]

  def update
    # @Booking = Booking.find(params[:id])
    # @Booking.request = true
    # @Booking.save
    # redirect_to dashboard_path
  end

  def new
    @booking = Booking.new
  end

  def create
    raise
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.location = @location
    @booking.amount = maths(params[:location][:start_date], @location)

    # session = Stripe::Checkout::Session.create(
    #   payment_method_types: ['card'],
    #   line_items: [{
    #     name: location.name,
    #     images: #image location,
    #     amount: @booking.amount,
    #     currency: 'eur',
    #     quantity: 1
    #   }],
    #   success_url: order_url(order),
    #   cancel_url: order_url(order)
    # )

    if @Booking.save
      redirect_to confirmation_path
      # booking.update(checkout_session_id: session.id)
    else
      render :new
    end
  end

  private

  def set_location
    @location = Location.find(params[:location_id])
    authorize @location
  end

  def booking_params
    params.require(:Booking).permit(:start_date, :end_date)
  end
end
