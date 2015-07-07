class MakingPersonIdInTasksNotNull < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.change :person_id, :integer, null: false
    end
  end
end
