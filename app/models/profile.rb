class Profile < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :places, dependent: :destroy
  has_many :reviews, dependent: :destroy

end
