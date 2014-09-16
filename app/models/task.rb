class Task < ActiveRecord::Base

  attr_accessible :description, :due_date, :name, :priority, :project_id, :tag_id, :user_id
  
  has_and_belongs_to_many :users, :tags
  belongs_to :project
  
  
  validates :name, :description, :priority, presence: true
  
end