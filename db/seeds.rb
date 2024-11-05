# db/seeds.rb
require 'faker'

# Create Users
users = 10.times.map do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email
  )
end

# Create Items
items = 10.times.map do
  Item.create(
    name: Faker::Commerce.product_name,
    item_type: Faker::Commerce.department,
    price: Faker::Commerce.price(range: 1.0..100.0),
    tax_rate: Faker::Number.decimal(l_digits: 2)
  )
end

# Create Group Discounts
group_discounts = 5.times.map do
  GroupDiscount.create(
    name: Faker::Commerce.promotion_code
  )
end

# Create Discounts
10.times do
  Discount.create(
    item_id: items.sample.id, # Use created items
    group_discount_id: group_discounts.sample.id, # Use created group discounts
    discount_type: ['Percentage', 'Flat'].sample,
    discount_percentage: Faker::Number.between(from: 1, to: 50)
  )
end

# Create Inventories
inventories = 10.times.map do
  Inventory.create(
    quantity: Faker::Number.between(from: 1, to: 100)
  )
end

# Create Orders
orders = 10.times.map do
  Order.create(
    user_id: users.sample.id, # Use created users
    total: Faker::Commerce.price(range: 10.0..500.0),
    status: ['completed', 'pending', 'cancelled'].sample,
    date: Faker::Date.between(from: '2023-01-01', to: Date.today)
  )
end

# Create Order Items
20.times do
  OrderItem.create(
    order_id: orders.sample.id, # Use created orders
    item_id: items.sample.id, # Use created items
    quantity: Faker::Number.between(from: 1, to: 5)
  )
end

# Create Wallets
10.times do
  Wallet.create(
    user_id: users.sample.id, # Use created users
    balance: Faker::Commerce.price(range: 0.0..1000.0)
  )
end