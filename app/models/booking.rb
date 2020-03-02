class Booking < ApplicationRecord
  belongs_to :workshop
  belongs_to :profile

  validates :date, presence: true, allow_blank: false
  monetize :amount_cents

  def already_commented?
    profile.reviews.find_by(workshop_id: workshop.id).present?
  end
end
