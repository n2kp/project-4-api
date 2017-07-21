class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :firstname, :lastname, :email, :image, :is_dev
  attribute :portfolio_url, if: :is_dev?
  attribute :linkedin_url, if: :is_dev?
  attribute :github_url, if: :is_dev?
  attribute :tech_stack, if: :is_dev?

  has_many :projects
  has_many :reviews
  has_many :tenders


  def is_dev?
    object.is_dev
  end
end
