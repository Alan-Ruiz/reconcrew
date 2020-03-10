class AddPlugsToLocation < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :plugs, :integer
  end
end
