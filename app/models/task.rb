class Task < ActiveRecord::Base
  def self.all_tasks
    Task.all
  end
end
