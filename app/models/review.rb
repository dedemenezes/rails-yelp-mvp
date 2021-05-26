class Review < ApplicationRecord

  RATING = (0..5).to_a
  
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, inclusion: { in: RATING, message: "%{value} needs to be between 1 and 5"}, numericality: { only_integer: true }

end
