-- 1
Select first_name, surname From restStaff
Inner Join restBill
On restStaff.staff_no = restBill.waiter_no
Where cust_name="Tanya Singh";

-- 2
Select room_date From restRoom_management
Inner Join restStaff
On restStaff.staff_no = restRoom_management.headwaiter
Where first_name="Charles" AND room_name="Green" AND room_date LIKE '1602%';

-- 3
Select T2.first_name, T2.surname From restStaff T1
Inner Join restStaff T2
On T1.headwaiter = T2.headwaiter
Where T1.first_name="Zoe"and T1.surname="Ball"
AND NOT (T2.first_name="Zoe" AND T2.surname="Ball");

-- 4
Select cust_name, bill_total, first_name As waiter_name From restBill
Inner Join restStaff
On restStaff.staff_no = restBill.waiter_no
Order by bill_total DESC;

-- 5
Select Distinct first_name, surname From restStaff
Inner Join restBill B1
On restStaff.staff_no = B1.waiter_no
Where B1.bill_no=00014 or B1.bill_no=00017;

-- 6
Select first_name, surname From restStaff S
Inner Join restRoom_management
On restRoom_management.headwaiter = S.staff_no
Where (restRoom_management.room_date = 160312 AND restRoom_management.room_name="BLUE");

Select Distinct first_name, surname From restStaff S
Inner Join restBill B1
On B1.waiter_no = S.staff_no
Inner Join restRest_table
On B1.table_no = restRest_table.table_no
Where B1.table_no IN (001,002,003) AND B1.bill_date=160312;