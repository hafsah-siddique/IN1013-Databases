Select Sum(bill_total) As Income From restBill;

Select Sum(bill_total) As Income From restBill
Where bill_date LIKE '1602%';

Select Avg(bill_total) From restBill
Where table_no = '2';

Select Min(no_of_seats) AS Min, Max(no_of_seats) AS Max, Avg(no_of_seats) AS Avg FROM restRest_table
Where room_name = 'Blue';

Select Count(Distinct table_no) From restBill
Where waiter_no IN ('004', '002');
