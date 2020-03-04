class Booking < ApplicationRecord
  serialize :dates, Array

  belongs_to :user
  belongs_to :location
  has_many :reviews

  monetize :amount_cents

  enum status: [:pending, :paid, :canceled]
end
