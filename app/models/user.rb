class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :spaces
  has_many :bookings
  has_many :bookings_as_owner, through: :spaces, source: :bookings

  validates :first_name, :last_name, :email, :password, presence: true
end
