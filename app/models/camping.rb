class Camping < ApplicationRecord
  belongs_to :user
  belongs_to :commune
  belongs_to :country, optional: true
  enum camping_type: [:camping, :patio]
  mount_uploaders :images, ImageUploader
  has_many :campsites
  has_and_belongs_to_many :services
  has_many :plans
  has_many :bookings, through: :campsites
  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
  validates :name, :user_id, :camping_type, :commune_id, presence: true

  def prom(id) 
    reviews = Review.where(booking_id: Booking.where(campsite_id: Campsite.where(camping_id: id)))
    
    if reviews.count > 0
      suma = 0
      reviews.each do |review|
        suma += review.ranking
      end

      @prom = suma / reviews.count
    else 
      @prom = 'No hay evaluaciones aun.'
    end

  end

end
