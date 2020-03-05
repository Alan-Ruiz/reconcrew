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
    start_date = Time.zone.today.beginning_of_month
    end_date = (start_date + 1.month).end_of_month
    @available_dates = @location.available_dates(start_date, end_date)
  end

  def create
    dates = params[:booking][:dates].split(', ') if params.dig(:booking, :dates)
    @booking = Booking.new
    @booking.user = current_user
    @booking.location = @location
    @booking.dates = dates || []
    @booking.amount =  @booking.dates.length * @location.price

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

    if @booking.save
      redirect_to confirmation_path
      # booking.update(checkout_session_id: session.id)
    else
      render 'locations/show'
    end
  end

  private

  def set_location
    @location = Location.find(params[:location_id])
    authorize @location
  end
end
