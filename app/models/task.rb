class Task < ActiveRecord::Base
  include PublicActivity::Model
  tracked owner: ->(controller, model) { controller && controller.current_user }

  attr_accessible :description, :due_date, :name, :priority, :project_id, :tag_id, :user_id, :completed
  

  has_and_belongs_to_many :users

  has_and_belongs_to_many :tags
  belongs_to :project
  has_many :comments
  
  
  validates :name, :description, :project_id, :tag_id, :user_id, presence: true
      
end