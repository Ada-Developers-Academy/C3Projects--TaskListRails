class RequireTaskname < ActiveRecord::Migration


  # def change
  #   change_table :tasks do |t|
  #     t.change :task_name, :null => false
  # end

  def change
    change_column :tasks, :taskname, :string, :null => false
  end
end
