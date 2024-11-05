class Item < ApplicationRecord
  has_many :order_items
  has_many :discounts
  has_many :item_inventories
  has_many :inventories, through: :item_inventories
end