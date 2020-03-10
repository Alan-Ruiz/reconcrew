class CreateFavoriteLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_locations do |t|
      t.integer :location_id
      t.integer :user_id

      t.timestamps
    end
  end
end
