class RemoveEventAtColumnFromReservations < ActiveRecord::Migration[5.0]
  def change
    remove_column :reservations, :event_at
  end
end
