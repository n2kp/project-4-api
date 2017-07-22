class TenderSerializer < ActiveModel::Serializer
  attributes :id, :bid, :pitch, :image, :is_active, :status
  belongs_to :user
  has_one :project

end
