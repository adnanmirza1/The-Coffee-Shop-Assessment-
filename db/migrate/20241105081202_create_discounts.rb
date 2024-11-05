class CreateDiscounts < ActiveRecord::Migration[7.0]
  def change
    create_table :discounts do |t|
      t.references :item, null: false, foreign_key: true
      t.references :group_discount, null: false, foreign_key: true  # Updated to reference group_discount
      t.string :discount_type
      t.decimal :discount_percentage

      t.timestamps
    end
  end
end