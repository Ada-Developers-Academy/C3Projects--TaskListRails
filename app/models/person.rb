class Person < ActiveRecord::Base
  has_many :tasks

  # def completed_task_count
  # # logic to add up the number of completed tasks for each person
  #   result = 0
  #   self.tasks.each do |task|
  #     if task.completed?
  #     # Using the .completed? method in the Task model
  #        result += 1
  #     end
  #   end
  #   result
  # end
  #
  # def uncompleted_task_count
  # # logic for adding up the number of uncompleted tasks for each person
  #   result = 0
  #   self.tasks.each do |task|
  #     if task.completed? == false
  #       result += 1
  #     end
  #   end
  #   result
  # end
end
