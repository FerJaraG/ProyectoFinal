class Camping < ApplicationRecord
  belongs_to :user
  belongs_to :commune
  enum camping_type: [:camping, :patio]
  mount_uploaders :images, ImageUploader
  has_many :campsites
  has_and_belongs_to_many :services
  has_many :plans
  has_many :bookings, through: :campsites
  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
  validates :name, :user_id, :camping_type, :commune_id, presence: true
end
