class Profile < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :places, dependent: :destroy
  has_many :reviews, dependent: :destroy

end
