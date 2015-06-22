class Person < ActiveRecord::Base
  scope :all_tasks, -> { all }
  has_many :tasks
end
