class WorkshopDate < ApplicationRecord
  belongs_to :workshop

  validates :date, presence: true, allow_blank: false

  def available
    counter = 0
    workshop.bookings.each do |booking|
      if booking.date == date
        counter += 1
      end
    end
    participants - counter
  end
end
