class AddPriceToLocations < ActiveRecord::Migration[5.2]
  def change
    add_monetize :locations, :price, currency: { present: false }
  end
end
