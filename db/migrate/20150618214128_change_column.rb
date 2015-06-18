class ChangeColumn < ActiveRecord::Migration
  def change
    change_column :tasks, :comp_status, :string, :default => "incomplete"
  end
end
