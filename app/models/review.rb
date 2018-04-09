class Review < ApplicationRecord
  belongs_to :booking
  validates :comment, :ranking, presence: true
end
