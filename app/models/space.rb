class Space < ApplicationRecord
  CATEGORY = %w[Party Wedding Birthday Coorporate]

  validates :category, inclusion: { in: CATEGORY }
  validates :place_name, :address, :max_capacity, :category, :price_per_booking, presence: true
  validates :price_per_booking, numericality: { greater_than: 0 }

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
end
