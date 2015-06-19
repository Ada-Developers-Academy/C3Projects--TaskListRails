class Task < ActiveRecord::Base
  def completed?
  	"\u2713" if date_completed && date_completed <= Time.now
  end

  def mark_complete
    date_completed = Time.now
  end
end
