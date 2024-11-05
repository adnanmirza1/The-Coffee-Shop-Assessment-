class GroupDiscount < ApplicationRecord
  has_many :discounts
  has_many :items, through: :discounts  # This allows you to access items associated with the group discount
end