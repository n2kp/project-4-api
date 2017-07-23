class Tender < ApplicationRecord

  belongs_to :user
  belongs_to :project

  validates :bid, presence: true
  validates :pitch, presence: true
  validates :status, inclusion: { in: ['accepted', 'pending', 'rejected'] }

  mount_uploader :image, ImageUploader

end
