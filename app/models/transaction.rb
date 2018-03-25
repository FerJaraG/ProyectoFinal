class Transaction < ApplicationRecord
  belongs_to :booking
  belongs_to :paymentmethod
  belongs_to :currency
end
