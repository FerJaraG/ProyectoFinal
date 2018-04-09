class Campsite < ApplicationRecord
  belongs_to :camping
  has_many :bookings
  validates :identifier, presence: true
end
