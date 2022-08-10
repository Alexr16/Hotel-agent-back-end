class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :description
      t.float :cost, default: 0.0
      t.string :address
      t.string :image, array: true, default: []
      t.references :user, null: false, foreign_key: true 
      t.timestamps
    end
  end
end
