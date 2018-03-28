class City < ApplicationRecord
  belongs_to :region
  has_many :communes, dependent: :destroy
end
