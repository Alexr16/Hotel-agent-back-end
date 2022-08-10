class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :city
      t.date :date
      t.integer :number_of_days
      t.integer :number_of_rooms
      t.integer :number_of_guests

      t.timestamps
    end
  end
end
