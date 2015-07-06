class Task < ActiveRecord::Base
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
