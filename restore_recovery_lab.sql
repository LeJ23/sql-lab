DROP DATABASE IF EXISTS restore_lab;
CREATE DATABASE restore_lab;

\c restore_lab

DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS orders;

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    department TEXT NOT NULL,
    salary INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT now()
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_name TEXT NOT NULL,
    amount INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT now()
);

INSERT INTO employees (name, department, salary) VALUES
('Alice', 'HR', 50000),
('Bob', 'IT', 60000),
('Carol', 'Finance', 70000);

INSERT INTO orders (customer_name, amount) VALUES
('Amy', 100),
('Ben', 200),
('Cindy', 300);

SELECT '=== initial employees ===' AS info;
TABLE employees;

SELECT '=== initial orders ===' AS info;
TABLE orders;

UPDATE employees
SET salary = salary + 5000
WHERE name = 'Alice';

DELETE FROM employees
WHERE name = 'Bob';

SELECT '=== after update/delete ===' AS info;
TABLE employees;

DROP TABLE orders;

SELECT '=== orders dropped ===' AS info;