drop view Employee_view;
drop view Project_Employee_view;
drop view Manager_view;
drop view Interim_Manager_view;
drop view President_view;
drop view Previous_Employee_view;
drop view Previous_Project_view;
drop view Current_Project_view;

DROP SEQUENCE Employee_view_seq;
create sequence Employee_view_seq
	start with 100
	increment by 1
	nomaxvalue;

create or replace trigger Employe_id_trig
	before insert on Personfor each row
begin
	select Employee_view_seq.nextval int :NEW.Employee_ID from dual;
end;
/
create view Employee_view as select First_Name, Last_Name, Home_Address, Zip_Code, Home_Phone, US_Citizen, Employee_ID, Salary, Salary_Exception, Type 
from Person where type = 'Employee';

create or replace trigger Employee_trigger
  instead of insert on Employee_view
  for each row
 begin
  insert into Person( First_Name, Last_Name, Home_Address, Zip_Code, Home_Phone, US_Citizen, Employee_ID, Salary, Salary_Exception, Type )
  values( :NEW.First_Name, 
  		  :NEW.Last_Name, 
  		  :NEW.Home_Address, 
  		  :NEW.Zip_Code, 
  		  :NEW.Home_Phone, 
  		  :NEW.US_Citizen, 
  		  select Employee_view_seq.nextval into :NEW.Employee_ID from dual, 
  		  :NEW.Salary, 
  		  :NEW.Salary_Exception, 
  		  'Employee');
 end;
 /

create view Project_Employee_view as select First_Name, Last_Name, Home_Address, Zip_Code, Home_Phone, US_Citizen, Employee_ID, Salary, Salary_Exception, Type
from Person where type = 'Project_Employee';

create or replace trigger Project_Employee_trigger
  instead of insert on Project_Employee_view
  for each row
 begin
  insert into Person( First_Name, Last_Name, Home_Address, Zip_Code, Home_Phone, US_Citizen, Employee_ID, Salary, Salary_Exception, Type)
  values( :NEW.First_Name, :NEW.Last_Name, :NEW.Home_Address, :NEW.Zip_Code, :NEW.Home_Phone, :NEW.US_Citizen, :NEW.Employee_ID, :NEW.Salary, :NEW.Salary_Exception, 'Project_Employee');
 end;
 /

create view Manager_view as select Person_ID, First_Name, Last_Name, Home_Address, Zip_Code, Home_Phone, US_Citizen, Employee_ID, Salary, Salary_Exception, Bonus, Type
from Person where type = 'Manager';

create or replace trigger Manager_trigger
  instead of insert on Manager_view
  for each row
 begin
  insert into Person( First_Name, Last_Name, Home_Address, Zip_Code, Home_Phone, US_Citizen, Employee_ID, Salary, Salary_Exception, Bonus, Type)
  values( :NEW.First_Name, :NEW.Last_Name, :NEW.Home_Address, :NEW.Zip_Code, :NEW.Home_Phone, :NEW.US_Citizen, :NEW.Employee_ID, :NEW.Salary, :NEW.Salary_Exception, :NEW.Bonus, 'Manager');
 end;
 /

create view Interim_Manager_view as select First_Name, Last_Name, Home_Address, Zip_Code, Home_Phone, US_Citizen, Employee_ID, Salary, Salary_Exception, Bonus, Type
from Person where type = 'Interim_Manager';

create or replace trigger Interim_Manager_trigger
  instead of insert on Interim_Manager_view
  for each row
 begin
  insert into Person(, First_Name, Last_Name, Home_Address, Zip_Code, Home_Phone, US_Citizen, Employee_ID, Salary, Salary_Exception, Bonus, Type)
  values( :NEW.First_Name, :NEW.Last_Name, :NEW.Home_Address, :NEW.Zip_Code, :NEW.Home_Phone, :NEW.US_Citizen, :NEW.Employee_ID, :NEW.Salary, :NEW.Salary_Exception, :NEW.Bonus, 'Interim_Manager');
 end;
 /

create view President_view as select Person_ID, First_Name, Last_Name, Home_Address, Zip_Code, Home_Phone, US_Citizen, Employee_ID, Salary, Salary_Exception, Bonus, Type 
from Person where type = 'President';

create or replace trigger President_trigger
  instead of insert on President_view
  for each row
 begin
  insert into Person( First_Name, Last_Name, Home_Address, Zip_Code, Home_Phone, US_Citizen, Employee_ID, Salary, Salary_Exception, Bonus, Type)
  values( :NEW.First_Name, :NEW.Last_Name, :NEW.Home_Address, :NEW.Zip_Code, :NEW.Home_Phone, :NEW.US_Citizen, :NEW.Employee_ID, :NEW.Salary, :NEW.Salary_Exception, :NEW.Bonus, 'President');
 end;
 /

create view Previous_Employee_view as select  Person_ID, First_Name, Last_Name, Home_Address, Zip_Code, Home_Phone, US_Citizen, Is_Fired, Salary, Type 
from Person where type = 'Previous_Employee';

create or replace trigger Previous_Employee_trigger
  instead of insert on Previous_Employee_view
  for each row
 begin
  insert into Person( First_Name, Last_Name, Home_Address, Zip_Code, Home_Phone, US_Citizen, Is-Fired, Salary, Type)
  values( :NEW.First_Name, :NEW.Last_Name, :NEW.Home_Address, :NEW.Zip_Code, :NEW.Home_Phone, :NEW.US_Citizen, :NEW.Is_Fired, :NEW.Salary, 'Previous_Employee');
 end;
 /

create view Previous_Project_view as 
SELECT
	Project_No,
	Project_Title,
	Type,
	End_Date_Month,
	End_Date_Year,
	End_Date_Day,
	Est_Person_Hours
From Project where type = 'Previous_Project' ;

create or replace TRIGGER Previous_Project_Trigger
	INSTEAD OF insert ON Previous_Project_View
	FOR EACH ROW
BEGIN
	insert into Project(
	Project_Title,
	Type,
	End_Date_Month,
	End_Date_Year,
	End_Date_Day,
	Est_Person_Hours)
	VALUES (
	:NEW.Project_Title,
	'Previous_Project',
	:NEW.End_Date_Month,
	:NEW.End_Date_Year,
	:NEW.End_Date_Day,
	:NEW.Est_Person_Hours) ;
END;
/

create view Current_Project_view as 
SELECT
	Project_No,
	Project_Title,
	Type,
	Project_Active
From Project where type = 'Current_Project' ;

create or replace TRIGGER Current_Project_Trigger
	INSTEAD OF insert ON Current_Project_View
	FOR EACH ROW
BEGIN
	insert into Project(
	Project_Title,
	Type,
	Project_Active)
	VALUES (
	:NEW.Project_Title,
	'Current_Project',
	:NEW.Project_Active) ;
END;
/

create view Non_Employees_view as
SELECT
	Person_ID,
	First_Name,
	Last_Name,
	Home_Address,
	Zip_Code,
	Home_Phone,
	Type
FROM Person where type = 'Non_Employee';

create or replace TRIGGER Non_Employee_Trigger
	instead of insert on Non_Employees_view
	for each row
BEGIN
	insert into Person(
		)