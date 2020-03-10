class CreateLocationextras < ActiveRecord::Migration[5.2]
  def change
    create_table :locationextras do |t|
      t.references :location, foreign_key: true
      t.references :extra, foreign_key: true

      t.timestamps
    end
  end
end
