class Place < ApplicationRecord
  has_one_attached :photo
  belongs_to :profile
  has_many :workshops, dependent: :destroy

  geocoded_by :full_address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, :address, :zip_code, :city, :phone_number, presence: true, allow_blank: false


  # private

  def full_address
    "#{address} #{zip_code} #{city}"
  end

end
