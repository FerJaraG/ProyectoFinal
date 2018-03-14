class Commune < ApplicationRecord
  belongs_to :city
  has_many :users
  has_many :campings
end
