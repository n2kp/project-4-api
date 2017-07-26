class TenderSerializer < ActiveModel::Serializer

  attributes :id, :bid, :pitch, :image_src, :is_active, :status
  belongs_to :user
  has_one :project

  def image_src
    object.image.url
  end

end
