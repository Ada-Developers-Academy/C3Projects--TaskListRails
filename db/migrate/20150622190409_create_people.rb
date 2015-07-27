class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :occupation
      t.string :favorite_color


      t.timestamps null: false
    end
  end
end
