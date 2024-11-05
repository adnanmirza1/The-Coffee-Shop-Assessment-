# Rails E-Commerce Application

## Overview

This is a simple e-commerce application built with Ruby on Rails. The application allows users to manage items, inventories, orders, discounts, group discounts, and wallets. It provides a RESTful API for interacting with these resources.

## Features

- User management
- Item management
- Inventory management
- Order processing
- Discount and group discount management
- Wallet management

## Technologies Used

- Ruby on Rails
- PostgreSQL (or MySQL)
- Faker (for seed data)
- Postman (for API testing)

## Getting Started

### Prerequisites

- Ruby (version 3.3.0 or higher)
- Rails (version 7.0 or higher)
- PostgreSQL
- Bundler gem

### Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/your-repo-name.git
   cd your-repo-name
   ```

2. **Install dependencies:**

   ```bash
   bundle install
   ```

3. **Set up the database:**

   - Create the database:

     ```bash
     rails db:create
     ```

   - Run migrations:

     ```bash
     rails db:migrate
     ```

   - Seed the database with sample data:

     ```bash
     rails db:seed
     ```

4. **Start the Rails server:**

   ```bash
   rails server
   ```

   The application will be available at `http://localhost:3000`.

## API Endpoints

### Users

- **GET** `/users` - Retrieve all users
- **GET** `/users/:id` - Retrieve a specific user by ID
- **POST** `/users` - Create a new user
- **PUT** `/users/:id` - Update an existing user
- **DELETE** `/users/:id` - Delete a user

### Items

- **GET** `/items` - Retrieve all items
- **GET** `/items/:id` - Retrieve a specific item by ID
- **POST** `/items` - Create a new item
- **PUT** `/items/:id` - Update an existing item
- **DELETE** `/items/:id` - Delete an item

### Inventories

- **GET** `/inventories` - Retrieve all inventories
- **GET** `/inventories/:id` - Retrieve a specific inventory by ID
- **POST** `/inventories` - Create a new inventory
- **PUT** `/inventories/:id` - Update an existing inventory
- **DELETE** `/inventories/:id` - Delete an inventory

### Orders

- **GET** `/orders` - Retrieve all orders
- **GET** `/orders/:id` - Retrieve a specific order by ID
- **POST** `/orders` - Create a new order
- **PUT** `/orders/:id` - Update an existing order
- **DELETE** `/orders/:id` - Delete an order

### Discounts

- **GET** `/discounts` - Retrieve all discounts
- **GET** `/discounts/:id` - Retrieve a specific discount by ID
- **POST** `/discounts` - Create a new discount
- **PUT** `/discounts/:id` - Update an existing discount
- **DELETE** `/discounts/:id` - Delete a discount

### Group Discounts

- **GET** `/group_discounts` - Retrieve all group discounts
- **GET** `/group_discounts/:id` - Retrieve a specific group discount by ID
- **POST** `/group_discounts` - Create a new group discount
- **PUT** `/group_discounts/:id` - Update an existing group discount
- **DELETE** `/group_discounts/:id` - Delete a group discount

### Wallets

- **GET** `/wallets` - Retrieve all wallets
- **GET** `/wallets/:id` - Retrieve a specific wallet by ID
- **POST** `/wallets` - Create a new wallet
- **PUT** `/wallets/:id` - Update an existing wallet
- **DELETE** `/wallets/:id` - Delete a wallet

## Testing the API

You can use Postman to test the API endpoints. Import the Postman collection provided in the repository to get started quickly.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue for any suggestions or improvements.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Ruby on Rails for the framework
- PostgreSQL/MySQL for the database
- Faker gem for generating sample data