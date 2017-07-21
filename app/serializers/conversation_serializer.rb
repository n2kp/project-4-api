class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :messages, :receiver, :sender
  has_many :messages
  belongs_to :sender
  belongs_to :receiver


end
