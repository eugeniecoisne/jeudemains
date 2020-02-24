class Profile < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :places
  has_many :reviews

end
