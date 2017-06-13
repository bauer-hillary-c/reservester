class AddApprovedToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :approved, :boolean, default: true
  end
end
