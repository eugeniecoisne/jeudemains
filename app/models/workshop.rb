class Workshop < ApplicationRecord
  has_many_attached :photos
  belongs_to :place
  belongs_to :profile
  has_many :reviews, dependent: :destroy
  has_many :workshop_dates, dependent: :destroy
  has_many :bookings, dependent: :destroy

  # validates :level, inclusion: { in: ['Débutant', 'Intermédiaire', 'Avancé'] }
  # validates :status, inclusion: { in: ['En ligne', 'Hors ligne'] }

  validates :name, presence: true, allow_blank: false
  monetize :price_cents

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

  def average_rating
    ratings = []
    average = 0
    if reviews.present?
      reviews.each { |review| ratings << review.rating }
      average = ratings.sum.fdiv(reviews.count).round(1).to_i
    end
  end

  def self.first_four_workshops_to_display
    Workshop.all.sort_by(&:average_rating).reverse.first(4)
  end

end
