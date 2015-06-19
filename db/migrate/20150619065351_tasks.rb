class Tasks < ActiveRecord::Migration
  def change
    change_column :tasks, :comp_status, :string, :default => "unread"
  end
end
