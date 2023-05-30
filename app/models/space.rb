class Space < ApplicationRecord
  CATEGORY = %w[Party Wedding Birthday Coorporate]

  validates :category, inclusion: { in: CATEGORY }

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
end
