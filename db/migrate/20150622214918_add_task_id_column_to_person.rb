class AddTaskIdColumnToPerson < ActiveRecord::Migration
  def change
    add_column :people, :task_id, :integer
  end
end
