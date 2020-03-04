class Location < ApplicationRecord
  WEEKDAYS = %w[Monday Tuesday Wednesday Thursday Friday Saturday Sunday]

  serialize :available_weekdays, Array

  belongs_to :user
  belongs_to :category


  monetize :price_cents
  has_many_attached :photos
  has_many :bookings

  def scheduled_dates(start_date, end_date)
    schedule(start_date, end_date).events.to_a
  end

  private

  def schedule(start_date, end_date)
    Montrose::Schedule.build { |s| s << to_recurrence(start_date, end_date) }
  end


  def to_recurrence(start_date, end_date)
    Montrose.r(
      every: 1.day,
      on: available_weekdays,
      starts: start_date,
      until: end_date
    )
  end
end
