/*
Requirement: HR Manager wants to know how many employees are working on a particular job
- HR Manager needs to report that shows how many employees are working on a particular job
Write a PL/SQL code to get the report from 'Programmer' job
*/
SELECT * FROM JOBS;
/
select * from EMPLOYEES;
/
DECLARE
 v_job_id jobs.job_id%TYPE;
 v_job_title jobs.job_title%TYPE;
 v_no_of_employees PLS_INTEGER;
BEGIN
  SELECT JOB_ID, JOB_TITLE into v_job_id, v_job_title FROM JOBS where JOB_TITLE = 'Programmer';
  IF (v_job_title != 'Programmer') THEN
     DBMS_OUTPUT.put_line('Invalid Job Title');
  ELSE
    SELECT count(EMPLOYEE_ID) into v_no_of_employees FROM EMPLOYEES where JOB_ID = v_job_id;
    DBMS_OUTPUT.PUT_LINE('No. Of Employees working as Programmer : '|| v_no_of_employees);
  END IF;
END;
/
