class Location < ApplicationRecord
  belongs_to :user
  belongs_to :category
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  monetize :price_cents
  has_many_attached :photos
  has_many :bookings
end
