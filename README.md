# Task 8 – Stored Procedures and Functions

## 🎯 Objective:
Learn to modularize SQL logic using **stored procedures** and **stored functions** in the `employeedb` database.

---

## 🛠 Stored Routine Definitions (in Task-8_script.sql):

### 1. 🔄 `MarkOrderShipped` (Stored Procedure)
- **Purpose:** Updates an order's `shipped` status to `TRUE`
- **Input Parameter:** `order_id` (INT)
- **Use Case:** When an order is processed, mark it as shipped

### 2. 🧮 `CalculateTotal` (Stored Function)
- **Purpose:** Calculates total price for a given quantity and unit price
- **Input Parameters:** `qty` (INT), `price` (INT)
- **Returns:** Total price (INT)
- **Use Case:** Used inside a `SELECT` to calculate price dynamically for each order

---

## 🗃️ OUTPUT Table:
### `orders`

<img width="392" alt="image" src="https://github.com/user-attachments/assets/59e666ee-9490-4ad7-94c3-bdcb287f9d7e" />


---

## 🔍 Sample Usage

```sql
SELECT * FROM employeedb.orders;
```
