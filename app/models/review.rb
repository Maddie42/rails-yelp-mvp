class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_interger: true }
  validates :rating, inclusion: { in: (0..5),
    message: "%{value} rating must be between 0 and 5"}
end
