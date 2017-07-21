class Review < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
  belongs_to :receiver, class_name: "User", foreign_key: "receiver_id"

  validates :body, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: 0..10
end
