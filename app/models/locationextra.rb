class Locationextra < ApplicationRecord
  validates :extra, uniqueness: { scope: :location }
  belongs_to :location
  belongs_to :extra
end
