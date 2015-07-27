class Task < ActiveRecord::Base
  # attr_accessor :person
  belongs_to :person

  def completed?
    if self.completed_at
    # if the task has the .completed_at attribute filled, then the task is completed
      true
    else
      false
    end

  end

end
