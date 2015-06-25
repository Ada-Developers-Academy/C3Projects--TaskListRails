class Task < ActiveRecord::Base

belongs_to :person

  def completed
    if completed_at != nil
      "yes"
    else
      "no"
    end
  end

end
