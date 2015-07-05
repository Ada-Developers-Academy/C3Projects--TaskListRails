class Task < ActiveRecord::Base
  belongs_to :person

  def complete?
    return true if date_complete && date_complete.to_s.length > 0
    return false
  end
end
