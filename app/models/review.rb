class Review < ApplicationRecord
  belongs_to :user

  validates :body, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: 0..10 
end
