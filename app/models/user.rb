class User < ApplicationRecord

  has_secure_password
  has_many :projects
  has_many :tenders
  has_many :reviews_created, class_name: "Review", foreign_key: "creator_id"
  has_many :reviews_received, class_name: "Review", foreign_key: "receiver_id"

  has_many :conversations, class_name: "Conversation", foreign_key: "sender_id"

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true,  uniqueness: true
  validates :firstname, presence: true
  validates :lastname, presence: true

  mount_uploader :image, ImageUploader

end
