-- Database: your_database_name

-- --------------------------------------------------------

-- Table structure for users
CREATE TABLE users (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Table structure for items
CREATE TABLE items (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    item_type VARCHAR(255),
    price DECIMAL(10, 2),
    tax_rate DECIMAL(5, 4),
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Table structure for inventories
CREATE TABLE inventories (
    id BIGSERIAL PRIMARY KEY,
    quantity INT,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Table structure for group discounts
CREATE TABLE group_discounts (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255),
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW()
);

-- Table structure for discounts
CREATE TABLE discounts (
    id BIGSERIAL PRIMARY KEY,
    item_id BIGINT NOT NULL,
    group_discount_id BIGINT NOT NULL,
    discount_type VARCHAR(50),
    discount_percentage DECIMAL(5, 2),
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    FOREIGN KEY (item_id) REFERENCES items(id),
    FOREIGN KEY (group_discount_id) REFERENCES group_discounts(id)
);

-- Table structure for wallets
CREATE TABLE wallets (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    balance DECIMAL(10, 2),
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Table structure for orders
CREATE TABLE orders (
    id BIGSERIAL PRIMARY KEY,
    user_id BIGINT NOT NULL,
    total DECIMAL(10, 2),
    status VARCHAR(50),
    date TIMESTAMP,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES users(id)
);


-- Sample data for users
INSERT INTO users (name, email) VALUES
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com');

-- Sample data for items
INSERT INTO items (name, item_type, price, tax_rate) VALUES
('Item 1', 'Type A', 10.00, 0.05),
('Item 2', 'Type B', 20.00, 0.10);

-- Sample data for inventories
INSERT INTO inventories (quantity) VALUES
(100),
(50);

-- Sample data for group discounts
INSERT INTO group_discounts (name) VALUES
('Discount Group 1'),
('Discount Group 2');

-- Sample data for discounts
INSERT INTO discounts (item_id, group_discount_id, discount_type, discount_percentage) VALUES
(1, 1, 'Percentage', 10.00),
(2, 2, 'Flat', 5.00);

-- Sample data for wallets
INSERT INTO wallets (user_id, balance) VALUES
(1, 100.00),
(2, 50.00);

-- Sample data for orders
INSERT INTO orders (user_id, total, status, date) VALUES
(1, 30.00, 'completed', NOW()),
(2, 20.00, 'pending', NOW());
