-- 1
Select Distinct cust_name From restBill
Where bill_total>450.00 AND waiter_no=
(Select Distinct staff_no From restStaff
Where headwaiter = 010);

-- 2
Select first_name, surname From restStaff
Where staff_no = (Select headwaiter from restStaff 
where staff_no IN (Select waiter_no From restBill 
Where cust_name Like "Nerida%" AND bill_date=160111));

-- 3
Select cust_name from restBill
where bill_total = (select min(bill_total) 
from restBill);

-- 4
select first_name, surname from restStaff
where headwaiter is not NULL 
and staff_no not in (select waiter_no from restBill);

-- 5
--Which customers had the largest single bill?
--List the customer name, 
--the name and surname of headwaiters, and the room 
--name where they were served on that occasion.
--select distinct cust_name, first_name, surname, room_name 
select distinct cust_name, headwaiter, restRest_table.room_name 
from restBill
inner join restRest_table
on restBill.table_no=restRest_table.table_no
inner join restRoom_management
on restRoom_management.room_name=restRest_table.room_name
where bill_total = (select max(bill_total) 
from restBill) and room_date=bill_date;