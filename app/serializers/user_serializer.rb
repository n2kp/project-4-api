class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :firstname, :lastname, :email, :image, :is_dev, :reviews_created, :reviews_received, :average_rating
  attribute :portfolio_url, if: :is_dev?
  attribute :linkedin_url, if: :is_dev?
  attribute :github_url, if: :is_dev?
  attribute :tech_stack, if: :is_dev?

  has_many :projects
  has_many :tenders
  has_many :conversations

  has_many :reviews_created
  has_many :reviews_received

  def is_dev?
    object.is_dev
  end

  def average_rating
    object.reviews_received.map { |review| review.rating }.reduce(:+).to_f / object.reviews_received.length
    # reviews_received = object.tenders.map { |tender| tender.user.reviews_received }
    # reviews_received[0].map { |review| review.rating }.reduce(:+).to_f / reviews_received[0].length
  end

end
