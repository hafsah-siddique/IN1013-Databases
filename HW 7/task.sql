CREATE [OR REPLACE]
 [ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]
 [DEFINER = user]
 [SQL SECURITY { DEFINER | INVOKER }]
 VIEW view_name [(column_list)]
 AS select_statement
 [WITH [CASCADED | LOCAL] CHECK OPTION]

 CREATE VIEW empvu80
AS SELECT employee_id, last_name, salary
 FROM employees
 WHERE department_id = 80;
To access the data:
SELECT * FROM empvu80;

CREATE VIEW salvu50
AS SELECT employee_id AS ID_NUMBER, last_name AS NAME,
 salary*12 AS ANN_SALARY
 FROM employees
 WHERE department_id = 50;

 CREATE VIEW samsBills
 AS SELECT first_name, surname, bill_date, cust_name, bill_total