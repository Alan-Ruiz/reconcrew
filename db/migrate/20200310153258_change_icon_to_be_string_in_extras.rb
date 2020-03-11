class ChangeIconToBeStringInExtras < ActiveRecord::Migration[5.2]
  def change
    change_column :extras, :icon, :string
  end
end
