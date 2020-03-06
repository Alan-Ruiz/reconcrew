class Booking < ApplicationRecord
  serialize :dates, Array

  belongs_to :user
  belongs_to :location
  has_many :reviews, dependent: :destroy

  monetize :amount_cents

  enum status: [:pending, :comfirm, :canceled, :paid]

  validates :dates, presence: true
end
