class Place < ApplicationRecord
  belongs_to :profil
  has_many :workshops

  validates :name, :address, :zip_code, :city, :phone_number, presence: true, allow_blank: false
end
