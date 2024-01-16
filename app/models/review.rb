class Review < ApplicationRecord
  belongs_to :restaurant, class_name: "restaurant", foreign_key: "restaurant_id"

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: (0..5).to_a }
end
