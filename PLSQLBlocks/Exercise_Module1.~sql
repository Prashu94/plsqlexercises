/**
Requirement 1: HR Manager wants to update the salary of the employees
PLSQL Block to calculate and display the salary for employee_id = 107
**/
SELECT * FROM employees where employee_id = 107;
/
DECLARE
       -- Declaring the variables to store the retrieved values of Employee Id: 107
       v_first_name VARCHAR2(20);
       v_last_name VARCHAR2(25);
       v_date_of_joining DATE;
       v_salary NUMBER(8,2);
       -- variable to store the caluclated salary
       v_incremented_salary NUMBER(8,2);
BEGIN
  -- Query to fetch the values for employee_id: 107
  SELECT
     first_name,
     last_name,
     hire_date,
     salary
     into
     v_first_name,
     v_last_name,
     v_date_of_joining,
     v_salary
  FROM employees
  where employee_id = 107;
  
  
  -- Check if the hire date is before 01-JAN-95
  IF(v_date_of_joining < '01-JAN-95') THEN
   -- Calculating the new salary with 10+5% hike
   v_incremented_salary := v_salary * 1.15;
  ELSE
   -- Calculating the new salary with 10% hike
   v_incremented_salary := v_salary * 1.10;
  END IF;
  
  -- Displaying the report
  DBMS_OUTPUT.put_line('Name: ' || v_first_name || ' ' || v_last_name);
  DBMS_OUTPUT.put_line('Date of Joining: ' || v_date_of_joining);
  DBMS_OUTPUT.put_line('Current Salary: ' || v_salary);
  DBMS_OUTPUT.put_line('Incremented Salary: ' || v_incremented_salary);
END;
/
/*
Requirement 2: An Employee wants to the view the first_name and phone_number of other employees
Declare variables to store values and display
*/
DECLARE
        v_employee_id NUMBER(6) := 100;
        v_first_name VARCHAR2(20);
        v_phone_number VARCHAR2(25);
BEGIN
  /*
        Details of employee id 100 will be retrieved and stored 
        in the variables usinge select statment.
  */
  SELECT 
        first_name,
        phone_number
        into 
        v_first_name,
        v_phone_number
  FROM employees
  where employee_id = v_employee_id;
  
  DBMS_OUTPUT.put_line('Employee ID: ' || v_employee_id);
  DBMS_OUTPUT.put_line('First Name: ' || v_first_name);
  DBMS_OUTPUT.put_line('Phone Number: ' || v_phone_number);
END;
/
/*
Exercise 2: An employee wants to view the first name and phone_number of other employees
Part 1: For Employee Id: 21
Output: ORA-01403: no data found.
Part 2: Remove the where clause.
Ouptut: ORA-01422: exact fetch returns more than requested number of rows.
*/
DECLARE
        v_employee_id NUMBER(6) := 21;
        v_first_name VARCHAR2(20);
        v_phone_number VARCHAR2(25);
BEGIN
  /*
        Details of employee id 100 will be retrieved and stored 
        in the variables usinge select statment.
  */
  SELECT 
        first_name,
        phone_number
        into 
        v_first_name,
        v_phone_number
  FROM employees;
  
  DBMS_OUTPUT.put_line('Employee ID: ' || v_employee_id);
  DBMS_OUTPUT.put_line('First Name: ' || v_first_name);
  DBMS_OUTPUT.put_line('Phone Number: ' || v_phone_number);
END;
/
/*
Exercise 3: An employees wants to view the first_name and phone_number of other employees
Check Output for 104 employee_id
*/
DECLARE
        v_employee_id NUMBER(6) := 104;
        v_first_name VARCHAR2(20);
        v_phone_number VARCHAR2(25);
BEGIN
  /*
        Details of employee id 100 will be retrieved and stored 
        in the variables usinge select statment.
  */
  SELECT 
        first_name,
        phone_number
        into 
        v_first_name,
        v_phone_number
  FROM employees
  where employee_id = v_employee_id;
  
  DBMS_OUTPUT.put_line('Employee ID: ' || v_employee_id);
  DBMS_OUTPUT.put_line('First Name: ' || v_first_name);
  DBMS_OUTPUT.put_line('Phone Number: ' || v_phone_number);
END;
/
/*
 Exercise 4: Manager wants to view the joining date of other employees
 Check the output for employee_id: 104
*/
DECLARE
        v_employee_id NUMBER(6) := 104;
        v_first_name VARCHAR2(20);
        v_date_of_joining DATE;
BEGIN
  /*
        Details of employee id 100 will be retrieved and stored 
        in the variables usinge select statment.
  */
  SELECT 
        first_name,
        hire_date
        into 
        v_first_name,
        v_date_of_joining
  FROM employees
  where employee_id = v_employee_id;
  
  DBMS_OUTPUT.put_line('Employee ID: ' || v_employee_id);
  DBMS_OUTPUT.put_line('First Name: ' || v_first_name);
  DBMS_OUTPUT.put_line('Date Of Joining: ' || v_date_of_joining);
END;
/
/*
Requirement 4: An Employee wants to check if she/he is eligible to pay tax.
Employees having salary greater than 8000 are eligible to pay tax.

Develop a PL/SQL program to check if Steven King employee ID 100 is eligble to pay taxes.
*/
DECLARE
        -- variable to store the retrieved salary
        v_salary NUMBER(8,2);
        v_eligible_salary CONSTANT NUMBER(6) := 8000;
        v_employee_id NUMBER(3) := 100; 
BEGIN
  -- salary of employee_id : 100
  SELECT 
     salary
     into
     v_salary
  FROM employees
  where employee_id = v_employee_id;
  
  IF v_salary > v_eligible_salary THEN
     DBMS_OUTPUT.put_line('Eligible to pay tax');
  END IF;
END;
/
/*
Requirement 5: An Employee wants to calculate his/her tax amount.
Employee need to pay tax to the government based on the given
salary slabs.
Develop a PL/SQL Block to display the tax amount of employee_id = 100
*/
DECLARE
        -- used for tax calculation
        p_employee_id   NUMBER(6) := 100;
        v_salary NUMBER(8,2);
        v_tax_percentage NUMBER(2);
        v_tax_amount NUMBER(8,2);
BEGIN
  -- fetching the salary of the employee with id: 100
  SELECT 
     salary
     into v_salary
  FROM employees
  where employee_id = p_employee_id;
  
  -- logic for tax computation
  IF ( v_salary >= 15000) THEN
     v_tax_percentage := 15;
  ELSIF v_salary < 15000 AND v_salary >= 8000 THEN
     v_tax_percentage := 10;
  ELSE
     v_tax_percentage := 0;
  END IF;
  v_tax_amount:=v_salary*v_tax_percentage*0.01;
  DBMS_OUTPUT.put_line('Employee has to pay tax of Rs.'||v_tax_amount);
END;
/
/*
Requirement 6: HR Manager wants to add a new Job Finance Clerk (FI_CLERK)
Develop a PL/SQL program to add Finance Clerk, FI_CLERK as a new job with minimum 
and maximum salary as 5000 and 10000 respectively.
Add it to the database only if the same Job Id does not exist, else display FI_CLERK already exists
*/
SELECT * FROM jobs where job_id = 'FI_CLERK';
/
DECLARE 
 v_job_id VARCHAR2(10) := 'FI_CLERK';
 v_job_title VARCHAR2(35) := 'Finance Clerk';
 v_min_salary NUMBER(6) := 5000;
 v_max_salary NUMBER(6) := 10000;
 v_counts_of_jobs PLS_INTEGER;
BEGIN
  -- Retrieving the number of jobs with same job_id
  SELECT COUNT (JOB_ID) 
  INTO v_counts_of_jobs
  FROM JOBS
  WHERE JOB_ID = v_job_id;
  
  IF (v_counts_of_jobs = 0) THEN
     INSERT INTO JOBS
     VALUES(v_job_id, v_job_title, v_min_salary, v_max_salary);
     COMMIT;
  ELSE
     DBMS_OUTPUT.put_line(v_job_title || ' already exists');
  END IF;
END;
/
SELECT * FROM jobs where job_id = 'FI_CLERK';
/
/*
Requirement 7: An Employee wants to update his/her phone number
Develop a PL/SQL program to update the phone number of John Chen, 
employee ID 110 as 515.124.5845
*/
SELECT * FROM employees
where employee_id = 110;
/
DECLARE
 p_employee_id NUMBER(6) := 110;
 v_phone_number VARCHAR2(25) := '515.124.5845'; 
 v_count_rows PLS_INTEGER;
BEGIN
 SELECT
 count(EMPLOYEE_ID)
 INTO v_count_rows
 FROM employees
 where EMPLOYEE_ID = p_employee_id;
 
 IF (v_count_rows != 0) THEN
    UPDATE employees
    set PHONE_NUMBER = v_phone_number
    WHERE employee_id = p_employee_id;
    COMMIT;
 ELSE
    DBMS_OUTPUT.put_line(p_employee_id || ' does not exist ');
 END IF;
END;
/
SELECT * FROM employees
where employee_id = 110;
/
/*
Requirement 8 : HR Manager wants to update commission percentage of employees
Develop a PL/SQL program to update the commission percentage (Commission_PCT)
of Pat, employee_id 202 as 0.1, if he is a marketing rep(Job Id: MK_REP)
*/
DECLARE
 p_employee_id NUMBER(6) := 202;
 v_commission_pct employees.Commission_Pct%TYPE := 0.1;
 v_job_id employees.job_id%TYPE := 'MK_REP';
 v_count_rows PLS_INTEGER;
BEGIN
 SELECT COUNT (EMPLOYEE_ID)
 INTO v_count_rows
 FROM
 employees
 where employee_id = p_employee_id
 and job_id = v_job_id;
 
 IF (v_count_rows !=0) THEN
    UPDATE employees
    set commission_pct = v_commission_pct
    where employee_id = p_employee_id
    AND job_id = v_job_id;
    COMMIT;
 ELSE
    DBMS_OUTPUT.put_line(p_employee_id || ' not present');
 END IF;
END;
/
SELECT * FROM employees
where employee_id = 202;
/
/*Requirement 9: HR Manager wants to report of how many employees joined in every year 
from 1987 to 2000
*/
DECLARE
 -- variable to store count of employees
 v_count_of_employees PLS_INTEGER;
BEGIN
  -- loop to get count of employees from 1987 to 2000
  FOR v_year in 1987 .. 2000
    LOOP
      -- v_year will have different values in each iteration
      SELECT COUNT (EMPLOYEE_ID)
      INTO v_count_of_employees FROM
      EMPLOYEES where v_year = TO_CHAR(hire_date, 'yyyy');
      DBMS_OUTPUT.put_line(v_year || ' : ' || v_count_of_employees);
    END LOOP;
END;
/
DECLARE
   --variable to store count of employee
   v_count_of_employees   PLS_INTEGER;
   v_start_year           NUMBER := 1987;
   --last year will be decided depend on current running year
   v_last_year            NUMBER := TO_CHAR (SYSDATE, 'yyyy');
BEGIN
   /* loop to iterate for years between 1987 to current year.
   where current year is not fixed it depends on system date */
   LOOP
      /*to retrieve count of employees who joined every year, in v_start_year variable*/
      SELECT COUNT (employee_id) INTO v_count_of_employees
        FROM employees WHERE v_start_year = TO_CHAR (hire_date, 'yyyy');
      DBMS_OUTPUT.put_line (v_start_year || ' : ' || v_count_of_employees);
      --loop will be terminated when it reach current year
      v_start_year := v_start_year + 1;
      EXIT WHEN v_start_year > v_last_year;
   /*--alternative to EXIT WHEN you can use EXIT clause as follows:
   if(v_start_year > v_last_year)then
   EXIT;
   end if; */
   END LOOP;
END;
/
/*Requirement 9: HR Manager wants a report of how many employee joins in one year
from 1987 to current year
*/
DECLARE
 v_start_year NUMBER(6) := 1987;
 v_last_year_number NUMBER(6) := to_char(sysdate,'yyyy');
 v_count_of_employees pls_integer;
BEGIN
  while(v_start_year <= v_last_year_number)
  LOOP
    SELECT COUNT (EMPLOYEE_ID) INTO v_count_of_employees FROM employees
    WHERE v_start_year = to_char(hire_date, 'yyyy');
    DBMS_OUTPUT.put_line (v_start_year || ' : ' || v_count_of_employees);
    v_start_year := v_start_year + 1;
  END LOOP;
END;
/
