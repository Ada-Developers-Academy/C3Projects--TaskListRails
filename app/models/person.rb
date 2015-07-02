class Person < ActiveRecord::Base
  has_many :tasks

  def completed_task_count
    result = 0
    self.tasks.each do |task|
      if task.completed?
         result += 1
      end
    end
    result
  end

  def uncompleted_task_count
    result = 0
    self.tasks.each do |task|
      if task.completed? == false
        result += 1
      end
    end
    result
  end
end
