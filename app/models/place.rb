class Place < ApplicationRecord
  belongs_to :profile
  has_many :workshops

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, :address, :zip_code, :city, :phone_number, presence: true, allow_blank: false
end
