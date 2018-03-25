class Booking < ApplicationRecord
  belongs_to :camping
  belongs_to :user
  belongs_to :campingsite
  belongs_to :paymentstatus
  has_one :review
end
