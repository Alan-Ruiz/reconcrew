class AddIconToExtras < ActiveRecord::Migration[5.2]
  def change
    add_column :extras, :icon, :string
  end
end
