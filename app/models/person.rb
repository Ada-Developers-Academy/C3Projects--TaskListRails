class Person < ActiveRecord::Base
  has_many :tasks

  def delete_associated_tasks
    Task.where(person_id: self.id).destroy_all
  end
end
