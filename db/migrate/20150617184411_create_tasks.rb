class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_name, null: false
      t.string :description
      t.string :completed
      t.datetime :date_completed

      t.timestamps null: false
    end
  end
end
