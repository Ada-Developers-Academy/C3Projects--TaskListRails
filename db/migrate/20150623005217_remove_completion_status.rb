class RemoveCompletionStatus < ActiveRecord::Migration
  def change
    remove_column :tasks, :completion_status
  end
end
