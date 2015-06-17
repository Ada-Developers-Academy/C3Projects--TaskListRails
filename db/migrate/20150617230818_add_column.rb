class AddColumn < ActiveRecord::Migration
  def change
    add_column :tasks, :comp_status, :string
  end
end
