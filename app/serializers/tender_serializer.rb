class TenderSerializer < ActiveModel::Serializer
  attributes :id, :bid, :pitch, :image, :is_active, :status
  has_one :user
  has_one :project
end
