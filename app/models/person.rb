class Person < ActiveRecord::Base
  has_many :tasks

  def delete_associated_tasks
    Task.where(person_id: self.id).destroy_all
  end

  def tasks_remaining
    Task.where("person_id = ? AND completed_at IS NULL", self.id ).count
  end
end
