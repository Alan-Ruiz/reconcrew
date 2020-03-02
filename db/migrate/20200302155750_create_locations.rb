class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :address
      t.text :description
      t.references :user, foreign_key: true
      t.integer :price
      t.boolean :available
      t.references :category, foreign_key: true
      t.float :long
      t.float :lat

      t.timestamps
    end
  end
end
