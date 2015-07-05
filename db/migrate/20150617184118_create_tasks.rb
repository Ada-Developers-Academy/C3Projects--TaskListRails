class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string   :name, null: false
      t.string   :description
      t.datetime :date_complete
      t.integer  :person_id

      t.timestamps null: false

      # add_foreign_key :tasks, :people
    end
  end
end
