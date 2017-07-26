class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :body, :rating
  belongs_to :creator, serializer: UserSerializer
  belongs_to :receiver, serializer: UserSerializer

end
