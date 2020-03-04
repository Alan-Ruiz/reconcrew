class RenameLongitdeAndLatitudeInLocations < ActiveRecord::Migration[5.2]
  def change
    rename_column :locations, :lat, :latitude
    rename_column :locations, :long, :longitude
  end
end
