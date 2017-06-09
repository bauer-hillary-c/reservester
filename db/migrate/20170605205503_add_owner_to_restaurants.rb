class AddOwnerToRestaurants < ActiveRecord::Migration[5.0]
  def change
    # add_foreign_key :restaurants, :owners
    # add_reference :restaurants, :owners, index: true

    add_column :restaurants, :owner_id, :integer
    add_index :restaurants, :owner_id
  end
end
