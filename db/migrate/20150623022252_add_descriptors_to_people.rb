class AddDescriptorsToPeople < ActiveRecord::Migration
  def change
    add_column :people, :occupation, :string
    add_column :people, :age, :integer
  end
end
