class AddPersonIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :person_id, :FixNum
  end
end
