class User < ApplicationRecord
  has_secure_password
  has_many :projects
  has_many :tenders
  has_many :reviews
end
