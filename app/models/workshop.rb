class Workshop < ApplicationRecord
  belongs_to :place
  belongs_to :profile
  has_many :reviews
  has_many :workshop_dates, dependent: :destroy
  has_many :bookings, dependent: :destroy

  # validates :level, inclusion: { in: ['Débutant', 'Intermédiaire', 'Avancé'] }
  # validates :status, inclusion: { in: ['En ligne', 'Hors ligne'] }

  validates :name, presence: true, allow_blank: false

  # validates :price, :duration, :participants, numericality: true

  include PgSearch::Model
  pg_search_scope :search_by_keyword, against: [
    [:name, 'A'],
    [:description, 'B']
  ],
    using: {
      tsearch: { prefix: true }
    }

  pg_search_scope :search_by_place,
    against: [],
    associated_against: {
          place: [
            [:zip_code, 'A'],
            [:city, 'B']
          ]
    },
    using: {
      tsearch: { prefix: true }
    }

  pg_search_scope :search_by_date,
    against: [],
    associated_against: {
          workshop_dates: [ :date ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
