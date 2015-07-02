class Task < ActiveRecord::Base
  belongs_to :person

  def completed?
    if self.completed_at
      true
    else
      false
    end

  end

end
