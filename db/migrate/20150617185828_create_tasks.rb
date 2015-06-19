class CreateTasks < ActiveRecord::Migration
  def change # NOTE TO SELF: 'change' is a Rails convention
    # NOTE TO SELF: create_table is a method that takes two parameter (a symbol for the table name & a block that will be performed)
    create_table :tasks do |t|
      t.string :name, null: false
      t.string :description
      t.datetime :completed_at
      t.timestamps null: false
    end
  end
end
