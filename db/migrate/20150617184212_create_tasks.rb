class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.string :desc
      t.datetime :comp_date

      t.timestamps null: false
    end
  end
end
