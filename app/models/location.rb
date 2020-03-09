class Location < ApplicationRecord
  WEEKDAYS = %w[Monday Tuesday Wednesday Thursday Friday Saturday Sunday]

  serialize :available_weekdays, Array

  validates :available_weekdays, presence: true

  belongs_to :user
  belongs_to :category
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :locationextras
  monetize :price_cents
  has_many_attached :photos
  has_many :bookings

  def available_dates(start_date, end_date)
   scheduled_dates(start_date, end_date).delete_if { |date| unavailable_dates.include? date }
  end

  def unavailable_dates
    @unavailable_dates ||= bookings.pluck(:dates).flatten
  end

  def scheduled_dates(start_date, end_date)
    schedule(start_date, end_date).events.to_a.map(&:to_date).map(&:to_s)
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
