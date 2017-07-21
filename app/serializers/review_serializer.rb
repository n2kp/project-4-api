class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :body, :rating, :creator, :receiver
  belongs_to :creator
  belongs_to :receiver

end
