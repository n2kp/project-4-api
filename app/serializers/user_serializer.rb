class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :firstname, :lastname, :email, :password, :password_confirmation, :image, :is_dev, :portfolio_url, :linkedin_url, :github_url, :tech_stack
  has_many :projects
  has_many :reviews
  has_many :tenders
end
