class Profile < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :places, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :workshops, dependent: :destroy


  def average_rating(reviews)
    ratings = []
    average = 0
    if reviews.present?
      reviews.each { |review| ratings << review.animator_rating }
      average = ratings.sum.fdiv(reviews.count).round(1).to_i
    else
      "-"
    end
  end

end
