class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :project_deadline, :bid_deadline, :tech_stack, :budget, :is_active, :is_priority
  has_one :user
  has_many :tenders



end
