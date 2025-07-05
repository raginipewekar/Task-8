-- Using a database
USE employeedb;

-- Create orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100),
    product_name VARCHAR(100),
    quantity INT,
    unit_price INT,
    order_date DATE,
    shipped BOOLEAN DEFAULT FALSE
);

-- Insert sample data
INSERT INTO orders (customer_name, product_name, quantity, unit_price, order_date)
VALUES
('Lady Gaga', 'MacBook', 1, 255000.00, '2025-07-01'),
('Chris Brown', 'IPhone', 2, 88000.00, '2025-07-02'),
('Ariana Grande', 'IPad', 3, 62000.00, '2025-07-03');

-- Stored Procedure: Mark an order as shipped
DELIMITER $$

CREATE PROCEDURE MarkOrderShipped (
    IN o_id INT
)
BEGIN
    UPDATE orders
    SET shipped = TRUE
    WHERE order_id = o_id;
END $$

DELIMITER ;

-- Stored Function: Calculate total price of order
DELIMITER $$

CREATE FUNCTION CalculateTotal (
    qty INT,
    price INT
)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN qty * price;
END $$

DELIMITER ;

--  Example usage:
-- Call procedure to mark order as shipped
CALL MarkOrderShipped(2);

-- Use function to view total price for all orders
SELECT 
    order_id,
    customer_name,
    product_name,
    quantity,
    unit_price,
    CalculateTotal(quantity, unit_price) AS total_price,
    shipped
FROM orders;
