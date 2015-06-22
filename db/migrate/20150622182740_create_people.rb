class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string  :first_name, null: false
      t.string  :last_name
      t.integer :task_id

      t.timestamps null: false
    end

    add_index :people, :task_id
  end
end
