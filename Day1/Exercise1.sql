/*
Requirement: HR Manager wants to add a new country
InfoSpark decided to expand their business in 2 or more countries SG(Singapore)
and Sri Lanka(LK) in Asia Region

Write a PL/SQL Block to add these 2 countries to DB. Check before adding country,
whether they already exist. If exists, then don't add them to DB and display
appropriate message.
*/
/
SELECT * FROM regions;
/
SELECT * FROM countries;
/
DECLARE
 v_region_name regions.region_name%type := 'Asia';
 -- get the region ID from the region table
 v_region_id regions.region_id%type;
 -- change the values of following variables to add other countries.
 -- v_country_name countries.country_name%TYPE := 'Singapore';
 v_country_name countries.country_name%TYPE := 'Sri Lanka';
 -- v_country_id countries.country_id%TYPE := 'SG';
 v_country_id countries.country_id%TYPE := 'LK';
 v_count_countries PLS_INTEGER;
BEGIN
  SELECT 
  region_id
  into v_region_id
  FROM regions
  where region_name = v_region_name;
  
  SELECT
  count(COUNTRY_ID)
  into v_count_countries
  FROM countries
  where region_id = v_region_id
  and country_id = v_country_id
  and country_name = v_country_name;
  
  IF v_count_countries IS NOT NULL THEN
     INSERT INTO COUNTRIES
     (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
     VALUES
     (v_country_id, v_country_name, v_region_id);
     COMMIT;
  ELSE
    DBMS_OUTPUT.put_line('Country ' || v_country_name || ' already exists');
  END IF;
END;
/
SELECT * FROM regions;
/
SELECT * FROM countries;
