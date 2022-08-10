class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :description
      t.integer :cost
      t.string :address
      t.string :image, array: true, default: []
      t.references :user, null: true, foreign_key: true 
      t.timestamps
    end
  end
end
