class Task < ActiveRecord::Base
  scope :all_tasks, -> { all }
  belongs_to :person
end
