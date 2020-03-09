class AddExtraToLocation < ActiveRecord::Migration[5.2]
  def change
    add_reference :locations, :locationextras, foreign_key: true
    add_column :locations, :space, :integer
    add_column :locations, :capacity, :integer
  end
end
