class Task < ActiveRecord::Base
  def change_complete_status(complete_request)
    complete_request == "1" ? complete : uncomplete
  end

  def complete
    update(completed_at: Time.now)
  end

  def uncomplete
    update(completed_at: nil)
  end
end
