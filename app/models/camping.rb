class Camping < ApplicationRecord
  belongs_to :user
  belongs_to :commune, optional: true 
  belongs_to :city, optional: true 
  belongs_to :region, optional:true 
  belongs_to :country, optional: true
  enum camping_type: [:camping, :patio]
  mount_uploaders :images, ImageUploader
  has_many :campsites
  has_and_belongs_to_many :services
end
