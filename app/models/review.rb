class Review < ApplicationRecord
  # A review must have content and a rating.
  # A review’s rating must be a number between 0 and 5.
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
