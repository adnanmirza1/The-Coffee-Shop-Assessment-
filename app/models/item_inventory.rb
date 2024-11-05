class ItemInventory < ApplicationRecord
  belongs_to :item
  belongs_to :inventory
end
