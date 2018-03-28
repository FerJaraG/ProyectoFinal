class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum user_type: [:person, :camping]
  belongs_to :commune, optional: true 
  belongs_to :city, optional: true 
  belongs_to :region, optional:true 
  belongs_to :country, optional: true
  belongs_to :genre, optional: true
  has_many :campings
  mount_uploader :image, ImageUploader
  has_many :bookings
  has_many :reviews, through: :bookings

  def pay
  	bookings.where(status: 'pagar')
  end
end

