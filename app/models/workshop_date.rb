class WorkshopDate < ApplicationRecord
  belongs_to :workshop

  validates :date, presence: true, allow_blank: false
end
