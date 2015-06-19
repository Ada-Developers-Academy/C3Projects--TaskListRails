class Task < ActiveRecord::Base
  def completed?
  	"\u2713" if date_completed
  end
end
