class Extra < ApplicationRecord
  has_many :locationextras

  validates :name, presence: true
end
