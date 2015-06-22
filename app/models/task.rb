class Task < ActiveRecord::Base
  belongs_to :person
  
  def completed?
  	"\u2611" if date_completed && date_completed <= Time.now
  end

  def mark_complete
    date_completed = Time.now
  end
end
