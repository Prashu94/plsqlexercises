/*
Requirement 15: Employee wants to know whether he/she is eligible for promotion or not
- Develop a PL/SQL program to check eligibility of David Austin, employee ID: 105 for promotion.
Employee should have completed at least 2 years at InfoSpark to be eligible for promotion. 
*/
DECLARE
 v_employee_id employees.employee_id%type := 105;
 v_year PLS_INTEGER;
BEGIN
  SELECT (months_between(sysdate, hire_date)/12) into v_year from employees
  where employee_id = v_employee_id;
  
  IF v_year >= 2 THEN
    DBMS_OUTPUT.put_line('Employees eligible for promotion');
  ELSE
    DBMS_OUTPUT.put_line('Employees not eligible for promotion');
  END IF;
END;
/

