class Location < ApplicationRecord
  belongs_to :user
  belongs_to :category


  monetize :price_cents
  has_many_attached :photos
end
