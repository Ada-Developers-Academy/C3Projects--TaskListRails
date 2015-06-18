class Task < ActiveRecord::Base

  def completed
    if completed_at != nil
      "yes"
    else
      "no"
    end
  end

  # def completed?
  #   if completed_at >=
  # end

end
