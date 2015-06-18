class Task < ActiveRecord::Base
  def self.all_tasks
    Task.all
  end

  # def self.show_task
    # Task.find
  # end
end
