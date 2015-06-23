class Person < ActiveRecord::Base
  attr_accessor :task_id

  scope :all_tasks, -> { all }
  has_many :tasks
end
