class AddEventColumnsToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :event_on, :text
    add_column :reservations, :event_time, :text
  end
end
