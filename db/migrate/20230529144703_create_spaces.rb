class CreateSpaces < ActiveRecord::Migration[7.0]
  def change
    create_table :spaces do |t|
      t.string :place_name
      t.string :address
      t.string :category
      t.text :description
      t.integer :max_capacity
      t.integer :price_per_booking
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
