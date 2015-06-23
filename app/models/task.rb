class Task < ActiveRecord::Base
  belongs_to :person

  def self.all_tasks
    Task.all
  end
end
