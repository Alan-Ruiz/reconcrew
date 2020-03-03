class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :location

  monetize :amount_cents

  enum status: [:pending, :paid, :canceled]
end
