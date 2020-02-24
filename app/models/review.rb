class Review < ApplicationRecord
  belongs_to :workshop
  belongs_to :profile

  validates :rating, :animator_rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :content, length: { minimum: 20 }, allow_blank: false
end
