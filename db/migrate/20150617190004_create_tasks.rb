class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.string :description
      t.datetime :date_completed
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
