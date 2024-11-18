Select bill_date, bill_total From restBill
Where cust_name = 'Bob Crow';

Select Distinct cust_name from restBill
Where cust_name LIKE '%Smith'
Order By cust_name DESC;

Select Distinct cust_name from restBill
Where cust_name LIKE '% C%';

Select first_name, surname from restStaff
Where headwaiter IS NULL;

Select * from restBill
Where bill_date LIKE '1602%';

Select Distinct bill_date From restBill
Where bill_date LIKE '15%';