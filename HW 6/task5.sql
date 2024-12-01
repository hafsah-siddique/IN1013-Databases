-- 1
select first_name, surname, bill_date, Count(bill_no)
from restStaff
inner join restBill
on staff_no = waiter_no
group by first_name, surname, bill_date
having Count(bill_no)>=2; 

-- 2
select restRoom_management.room_name, Count(table_no)
from restRoom_management
inner join restRest_table
on restRoom_management.room_name = restRest_table.room_name
where restRest_table.no_of_seats>6
group by restRoom_management.room_name;

-- 3
select room_name, count(bill_no)
from restRest_table
inner join restBill 
on restRest_table.table_no=restBill.table_no
group by restRest_table.room_name;

-- 4
SELECT S1.first_name, S1.surname, SUM(bill_total) 
FROM restStaff S1
INNER JOIN restStaff S2
ON S2.headwaiter = S1.staff_no
INNER JOIN restBill 
ON S2.staff_no = waiter_no
GROUP BY S1.first_name, S1.surname
ORDER BY SUM(bill_total) DESC;

--5
SELECT cust_name, AVG(bill_total) 
FROM restBill
GROUP BY cust_name
HAVING AVG(bill_total) > 400.00;

--6
SELECT first_name, Surname, COUNT(bill_no) 
FROM restStaff
INNER JOIN restBill
ON staff_no = waiter_no
GROUP BY first_name, Surname
HAVING COUNT(bill_no)>2;