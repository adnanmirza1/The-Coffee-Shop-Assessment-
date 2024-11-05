class CreateItemInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :item_inventories do |t|
      t.references :item, null: false, foreign_key: true
      t.references :inventory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
