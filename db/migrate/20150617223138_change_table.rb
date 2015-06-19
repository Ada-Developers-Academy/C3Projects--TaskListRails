class ChangeTable < ActiveRecord::Migration
  def change
    change_table :tasks do |t|
      t.rename :completed_on, :completed_at
    end
  end
end
