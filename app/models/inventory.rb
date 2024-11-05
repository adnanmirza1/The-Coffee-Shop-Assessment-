class Inventory < ApplicationRecord
  has_many :item_inventories
  has_many :items, through: :item_inventories
end
