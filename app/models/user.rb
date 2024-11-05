class User < ApplicationRecord
  has_many :orders
  has_one :wallet
  has_many :transactions
end