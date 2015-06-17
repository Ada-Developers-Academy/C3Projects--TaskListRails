class Task < ActiveRecord::Base
  scope :all_tasks, -> { all }
end
