-- 1
CREATE VIEW samsBills
AS SELECT first_name, surname, bill_date, cust_name, bill_total
FROM restBill B
INNER JOIN restStaff S
ON B.waiter_no=S.staff_no
WHERE first_name='Sam' AND surname='Pitt';

-- 2
SELECT first_name, surname, bill_date, cust_name, bill_total
FROM samsBills
WHERE first_name='Sam' AND surname='Pitt' AND bill_total>400; 

-- 3
CREATE VIEW roomTotals
AS SELECT room_name, SUM(bill_total) as total_sum
FROM restBill B
INNER JOIN restRest_table T
ON B.table_no=T.table_no
GROUP BY room_name;

-- 4
CREATE VIEW teamTotals
AS SELECT CONCAT(S2.first_name, ' ', S2.surname) as headwaiter_name, SUM(bill_total) as total_sum
FROM restBill B
INNER JOIN restStaff S1
ON waiter_no=staff_no
INNER JOIN restStaff S2
ON S1.headwaiter=S2.staff_no
GROUP BY headwaiter_name;
