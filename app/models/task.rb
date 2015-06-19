class Task < ActiveRecord::Base
  def completed?
  	return "\u2713" if date_completed
  end
end
