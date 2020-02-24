class Workshop < ApplicationRecord
  belongs_to :place
  belongs_to :profile
  has_many :reviews
  has_many :workshop_dates

  validates :level, inclusion: { in: ['Débutant', 'Intermédiaire', 'Avancé'] }
  validates :status, inclusion: { in: ['En ligne', 'Hors ligne'] }

  validates :name, presence: true, allow_blank: false

  validates :price, :duration, :participants, numericality: true
end
