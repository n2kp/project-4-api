class User < ApplicationRecord

  has_secure_password validations: false
  has_many :projects
  has_many :tenders
  has_many :reviews_created, class_name: "Review", foreign_key: "creator_id"
  has_many :reviews_received, class_name: "Review", foreign_key: "receiver_id"

  has_many :conversations, class_name: "Conversation", foreign_key: "sender_id"

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, unless: :oauth_login?
  validates :password, presence: true, confirmation: true, unless: :oauth_login?, on: :create
  validates :firstname, presence: true, unless: :oauth_login?
  validates :lastname, presence: true, unless: :oauth_login?

  mount_uploader :image, ImageUploader


  def oauth_login?
    github_id.present? || facebook_id.present?
  end

end
