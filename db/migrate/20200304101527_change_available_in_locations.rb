class ChangeAvailableInLocations < ActiveRecord::Migration[5.2]
  def change
    rename_column :locations, :available, :available_weekdays
    change_column :locations, :available_weekdays, :string
  end
end
