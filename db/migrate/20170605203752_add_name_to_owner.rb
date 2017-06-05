class AddNameToOwner < ActiveRecord::Migration[5.0]
  def change
    add_column :owners, :name, :varchar
  end
end
