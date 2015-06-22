class AddPersonIdToTask < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      add_column :tasks, :person_id, :integer
    end
  end
end
