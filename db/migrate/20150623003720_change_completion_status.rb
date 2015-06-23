class ChangeCompletionStatus < ActiveRecord::Migration
  def change
    change_column :tasks, :completion_status, :string
  end
end
