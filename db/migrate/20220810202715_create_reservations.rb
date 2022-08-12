class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :city
      t.date :date
      t.integer :number_of_days, default: 0
      t.integer :number_of_rooms, default: 0
      t.integer :number_of_guests, default: 0
      t.references :user, null: false, foreign_key: true 
      t.references :hotel, null: false, foreign_key: true 
      t.timestamps
    end
  end
end
