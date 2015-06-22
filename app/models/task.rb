class Task < ActiveRecord::Base
  belongs_to :person

  def change_complete_status(complete_request)
    complete_request == "1" ? complete : uncomplete
  end

  def complete
    update(completed_at: Time.now)
  end

  def uncomplete
    update(completed_at: nil)
  end

  def owner
    Person.find(self.person_id).name
  end
end
