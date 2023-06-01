class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :space
  has_one :review

  validates :covers, numericality: { greater_than: 0 }
  validates :covers, :date, presence: true
  # validate :covers, :less_than_max_cap

  # private

  # def less_than_max_cap
  #   if space.max_capacity < covers
  #     errors.add(:covers, "cannot be larger than max capacity")
  #   end
  # end

end
