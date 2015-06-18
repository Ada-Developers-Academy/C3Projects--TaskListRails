class Task < ActiveRecord::Base
  def self.all_tasks
    tasks = Task.all
  end
end
