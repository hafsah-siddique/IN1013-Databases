-- 1
Select Sum(bill_total) As Income From restBill;

-- 2
Select Sum(bill_total) As Income From restBill
Where bill_date LIKE '1602%';

-- 3
Select Avg(bill_total) From restBill
Where table_no = '2';

-- 4
Select Min(no_of_seats) AS Min, Max(no_of_seats) AS Max, Avg(no_of_seats) AS Avg FROM restRest_table
Where room_name = 'Blue';

-- 5
Select Count(Distinct table_no) From restBill
Where waiter_no IN ('004', '002');
