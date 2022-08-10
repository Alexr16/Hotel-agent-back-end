class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :description
      t.integer :cost
      t.string :address
      t.text :image
      t.string :[]

      t.timestamps
    end
  end
end
