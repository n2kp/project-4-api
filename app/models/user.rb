class User < ApplicationRecord
  has_secure_password
  has_many :projects
  has_many :tenders
  has_many :reviews

  validates :username, presence: true
  validates :email, uniqueness: true, presence: true
  validates :firstname, presence: true
  validates :lastname, presence: true
  

end
