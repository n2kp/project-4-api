class Project < ApplicationRecord
  belongs_to :user
  has_many :tenders

  validates :title, presence: true, length: { minimum: 5 }
  validates :description, presence: true, length: { minimum: 25 }
  validates :bid_deadline, presence: true
  validates :project_deadline, presence: true
  validates :budget, presence: true
  validates :tech_stack, presence: true
end
