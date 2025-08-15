-- Create the Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    registration_date DATE
);

-- Create the Products table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    stock_quantity INT
);

-- Create the Orders table (linking Customers and Products)
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create the Order_Items table (details of products in each order)
CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price_per_unit DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Insert sample data into Customers
INSERT INTO Customers (customer_id, first_name, last_name, email, registration_date) VALUES
(1, 'Alice', 'Smith', 'alice.smith@example.com', '2024-01-10'),
(2, 'Bob', 'Johnson', 'bob.j@example.com', '2024-02-15'),
(3, 'Charlie', 'Brown', 'charlie.b@example.com', '2024-03-01'),
(4, 'Diana', 'Miller', 'diana.m@example.com', '2024-03-20'),
(5, 'Eve', 'Davis', 'eve.d@example.com', '2024-04-05');

-- Insert sample data into Products
INSERT INTO Products (product_id, product_name, category, price, stock_quantity) VALUES
(101, 'Laptop Pro', 'Electronics', 1200.00, 50),
(102, 'Gaming Mouse', 'Electronics', 75.00, 200),
(103, 'Mechanical Keyboard', 'Electronics', 150.00, 100),
(104, 'SQL for Dummies', 'Books', 25.00, 300),
(105, 'Database Design Guide', 'Books', 45.00, 150),
(106, 'Ergonomic Chair', 'Furniture', 300.00, 75);

-- Insert sample data into Orders
INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(1001, 1, '2024-04-10', 1350.00),
(1002, 3, '2024-04-12', 45.00),
(1003, 1, '2024-04-15', 75.00),
(1004, 4, '2024-05-01', 300.00),
(1005, 2, '2024-05-05', 1200.00);

-- Insert sample data into Order_Items
INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, price_per_unit) VALUES
(2001, 1001, 101, 1, 1200.00),
(2002, 1001, 103, 1, 150.00),
(2003, 1002, 105, 1, 45.00),
(2004, 1003, 102, 1, 75.00),
(2005, 1004, 106, 1, 300.00),
(2006, 1005, 101, 1, 1200.00);
