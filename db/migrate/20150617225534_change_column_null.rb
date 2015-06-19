class ChangeColumnNull < ActiveRecord::Migration
  def change
    change_column_null :tasks, :name, false
  end
end
