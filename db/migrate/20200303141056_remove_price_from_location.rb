class RemovePriceFromLocation < ActiveRecord::Migration[5.2]
  def change
    remove_column :locations, :price, :integer
  end
end
