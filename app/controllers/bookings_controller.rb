class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def update
    # @Booking = Booking.find(params[:id])
    # @Booking.request = true
    # @Booking.save
    # redirect_to dashboard_path
  end

  def create
    @location = Location.find(params[:location_id])
    @booking = Booking.new(params.require(:Booking).permit(:start_date, :end_date))
    @booking.user = current_user
    @booking.location = @location
    @booking.amount = maths(params[:location][:start_date], @location)

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: location.name,
        images: #image location,
        amount: @booking.amount,
        currency: 'eur',
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    if @Booking.save
      redirect_to confirmation_path
      booking.update(checkout_session_id: session.id)
      @location.update(available: false)
    else
      render "location/show"
    end
  end

  private

  def maths(date, location)
    if date != ""
      checks = date.split(" to ")
      check_in = Date.parse(checks[0])
      check_out = Date.parse(checks[1])
      days = check_out - check_in
      return days * location.price
    else
      return 0
    end
  end
end
