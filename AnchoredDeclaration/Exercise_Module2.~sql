/*
Requirement 10: HR Manager wants to add employee
*/
DECLARE
 v_first_name varchar2(20) := 'Joy';
 v_last_name varchar2(25) := 'Bosh';
 v_email_id varchar2(25) := 'Joy_Bosh';
 v_hire_date DATE := sysdate;
 v_job_id VARCHAR2(10) := 'FI_MGR';
 v_employee_id NUMBER(6) := 900;
BEGIN
  INSERT INTO EMPLOYEES
  ( EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, HIRE_DATE, JOB_ID)
  VALUES
  ( v_employee_id, v_first_name, v_last_name, v_email_id, v_hire_date, v_job_id);
  COMMIT;
END;
/
select * from employees;
/
-- The below will give an error due to size of first_name is big than the actual value in the table.
/
ALTER TABLE employees MODIFY first_name VARCHAR2(30);
/
DECLARE
 v_first_name varchar2(50) := 'Prince Christian Victor';
 v_last_name varchar2(25) := 'Taylor';
 v_email_id varchar2(25) := 'PCTaylor';
 v_hire_date DATE := sysdate;
 v_job_id VARCHAR2(10) := 'FI_MGR';
 v_employee_id NUMBER(6) := 901;
BEGIN
  INSERT INTO EMPLOYEES
  ( EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, HIRE_DATE, JOB_ID)
  VALUES
  ( v_employee_id, v_first_name, v_last_name, v_email_id, v_hire_date, v_job_id);
  COMMIT;
END;
/
SELECT * FROM employees;
/
/*
Requirement 2: An Employee wants to the view the first_name and phone_number of other employees
Declare variables to store values and display
*/
DECLARE
        v_employee_id NUMBER(6) := 100;
        v_first_name employees.first_name%TYPE;
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
DECLARE
        v_employee_id employees.employee_id%TYPE := 100;
        v_first_name employees.first_name%TYPE;
        v_phone_number employees.phone_number%TYPE;
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
Requirement 3: Manage wants to view the joining date of other employees

*/
select * from employees;
/
DECLARE
  v_employee_id  employees.employee_id%type := 104;
  v_first_name   employees.first_name%TYPE;
  v_phone_number employees.phone_number%TYPE;
  v_email_ID     employees.email%TYPE;
  v_joining_date employees.hire_date%TYPE;
BEGIN

  SELECT first_name, email, phone_number, hire_date
    INTO v_first_name, v_email_ID, v_phone_number, v_joining_date
  
    FROM employees
   WHERE employee_id = v_employee_id;

  dbms_output.put_line('Employee ID: ' || v_employee_id);
  dbms_output.put_line('First Name: ' || v_first_name);
  dbms_output.put_line('Email ID: ' || v_email_ID);
  dbms_output.put_line('Contact Number: ' || v_phone_number);
END;
/
/*
Requirement 6: HR Manager wants to add a new job
Develop a PL/SQL program to add Advertising Director, ADV_DIR as a new job with minimum and maximum salary as 5000 and 10000 respectively. 
Add it to the database only if the same job ID does not exist, else display the message "ADV_DIR already exists".
*/
DECLARE 
 v_job_id jobs.job_id%TYPE := 'FI_CLERK';
 v_job_title jobs.job_title%TYPE := 'Finance Clerk';
 v_min_salary jobs.min_salary%TYPE := 5000;
 v_max_salary jobs.max_salary%TYPE := 10000;
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
/*
Requirement 1: Revisiting the example with anchor type declaration of variables
*/
DECLARE
       -- Declaring the variables to store the retrieved values of Employee Id: 107
       v_employee_id employees.employee_id%type := 107;
       v_first_name employees.first_name%type;
       v_last_name employees.last_name%type;
       v_date_of_joining employees.hire_date%type;
       v_salary employees.salary%type;
       -- variable to store the caluclated salary
       v_incremented_salary v_salary%type;
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
  where employee_id = v_employee_id;
  
  
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
SELECT * FROM employees
where employee_id = 107;
/
/*
Requirement 11: HR Manager wants to view employee details
HR Manager wants to view all the details of the employee Joy Bosh (empId: 900) who has joined recently.
*/
DECLARE
  rec_emp_detail employees%rowtype;
  v_employee_id  employees.employee_id%type := 900;
BEGIN
  select *
    into rec_emp_detail
    from employees
   where employee_id = v_employee_id;

  DBMS_OUTPUT.PUT_LINE('EMPLOYEE ID=' || rec_emp_detail.employee_id);
  DBMS_OUTPUT.PUT_LINE('FIRST NAME=' || rec_emp_detail.first_name);
  DBMS_OUTPUT.PUT_LINE('LAST NAME=' || rec_emp_detail.last_name);
  DBMS_OUTPUT.PUT_LINE('EMAIL=' || rec_emp_detail.email);
  DBMS_OUTPUT.PUT_LINE('PHONE NUMBER=' || rec_emp_detail.phone_number);
  DBMS_OUTPUT.PUT_LINE('HIRE DATE=' || rec_emp_detail.hire_date);
  DBMS_OUTPUT.PUT_LINE('JOB ID=' || rec_emp_detail.job_id);
  DBMS_OUTPUT.PUT_LINE('SALARY=' || rec_emp_detail.salary);
  DBMS_OUTPUT.PUT_LINE('COMMISSION PERCENTAGE=' ||
                       rec_emp_detail.commission_pct);
  DBMS_OUTPUT.PUT_LINE('DEPARTMENT ID=' || rec_emp_detail.department_id);
END;
/
/*
Requirement 12: HR Manager wants to view all the departments
- HR Manager wants to view all the details for department ID 10
Develop PL/SQL program to display all the details of the department
*/
select * from departments;
/
DECLARE
 v_department_id departments.department_id%type := 10;
 rec_dept_details departments%ROWTYPE;
BEGIN
  select *
  into rec_dept_details
  from departments
  where department_id = v_department_id;
  
  DBMS_OUTPUT.PUT_LINE('DEPARTMENT_ID = '|| rec_dept_details.department_id);
  DBMS_OUTPUT.PUT_LINE('MANAGER_ID = '|| rec_dept_details.manager_id);
  DBMS_OUTPUT.PUT_LINE('DEPARTMENT_NAME = '|| rec_dept_details.department_name);
  DBMS_OUTPUT.PUT_LINE('LOCATION_ID = '|| rec_dept_details.location_id);
END;
/
