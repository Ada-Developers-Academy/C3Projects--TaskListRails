class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.string :description
      t.datetime :completed_date
      t.integer :person_id

      t.timestamps null: false
    end
  end
end
