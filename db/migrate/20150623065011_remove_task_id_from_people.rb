class RemoveTaskIdFromPeople < ActiveRecord::Migration
  def change
    remove_column(:people, :task_id)
  end
end
