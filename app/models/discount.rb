class Discount < ApplicationRecord
  belongs_to :item
  belongs_to :group_discount  # This references the GroupDiscount model
end