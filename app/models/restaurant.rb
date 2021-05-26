class Restaurant < ApplicationRecord

  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: Restaurant::CATEGORY,
    message: "%{value} is not a valid option. Chosse between:  %w(chinese italian japanese french belgian)" }


end
