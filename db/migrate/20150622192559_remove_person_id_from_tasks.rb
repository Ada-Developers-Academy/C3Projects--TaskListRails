class RemovePersonIdFromTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :person_id, :integer
  end
end
