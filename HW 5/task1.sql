-- 1
Select bill_date, bill_total From restBill
Where cust_name = 'Bob Crow';

-- 2
Select Distinct cust_name from restBill
Where cust_name LIKE '%Smith'
Order By cust_name DESC;

-- 3
Select Distinct cust_name from restBill
Where cust_name LIKE '% C%';

-- 4
Select first_name, surname from restStaff
Where headwaiter IS NULL;

-- 5
Select * from restBill
Where bill_date LIKE '1602%';

--6
Select Distinct bill_date From restBill
Where bill_date LIKE '15%';
