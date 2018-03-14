class Camping < ApplicationRecord
  belongs_to :user
  belongs_to :commune, optional: true 
  belongs_to :city, optional: true 
  belongs_to :region, optional:true 
  belongs_to :country, optional: true
  enum camping_type: [:camping, :patio]
end
