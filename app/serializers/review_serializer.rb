class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :body, :rating
  has_one :user
end
