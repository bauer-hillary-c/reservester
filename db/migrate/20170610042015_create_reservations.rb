class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.references :restaurant, foreign_key: true
      t.datetime :event_at
      t.text :guest_name
      t.text :notes
      t.timestamps
    end
  end
end
