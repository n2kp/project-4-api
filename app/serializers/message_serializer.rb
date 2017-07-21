class MessageSerializer < ActiveModel::Serializer
  attributes :id, :body, :user
  belongs_to :conversation
  belongs_to :user


end
