Insert into Regions(Region_ID,Region_Name)
values(1,'Asia'),(2,'Europe'),(3,'USA')

select * from Regions


insert into Countries(Country_ID,Country_Name,Region_ID)
values('CH','China',1),('IT','Italy',2),('CA','Canada',3)

select * from Countries

insert into Locations(Location_ID,Street_address,Postal_code,City,State_Province,Country_ID)
values(1000,'Forbidden City','1298','Shanghai','Jiangsu','CH'),(1100,'Via Bonafous Alfonso 15','33200','Arta Terme','Udine','IT'),(1200,'City Hall 100 Queen St W','32000','Toronto','Ontario','CA')

select * from Locations

insert into Departments(Department_ID,Department_Name,Manager_ID,Location_ID)
values(140,'Control & Credit',Null,1000),(150,'Shareholder Services',NULL,1100),(160,'Manufacturing',NULL,1200)

select * from Departments

insert into Jobs(Job_ID,Job_Title,MIN_Salary,MAX_Salary)
values ('AD-Press','President',22000,40000),('Fi-MGR','Finance Manager',6800,16000),('ST_MAN','Stock Manager',5500,8500)

select * from Jobs

insert into Employees(Employee_ID,First_Name,Last_Name,E_Mail,Phone_Number,Hire_Date,Salary,Commission_PCT,Manager_ID,Department_ID,Job_ID)
values(100,'Sergio','Marquina','sergiomarquina@gmail.com','555-413-8976','17-JUN-1990','24000',NULL,NULL,140,'AD-Press'),
(101,'Neena','Khan','khanNeena@gmail.com','515-123-4568','6-JAN-2000','30000',NULL,NULL,150,'Fi-MGR'),
(102,'Hann','Lee','LeeHan@gmail.com','590-423-4567','7-SEP-1998','40000',NULL,NULL,160,'ST_MAN')

select * from Employees

insert into Job_History(Date_Start,Date_End,Employee_ID,Job_ID,Department_ID)
values('17-JUN-1990','22-April-1996',100,'AD-Press',140),('6-JAN-2000','7-MAY-2005',101,'Fi-MGR',150),('7-SEP-1998','12-February-2003',102,'ST_MAN',160)

select * from Job_History

insert into Job_Grades(Grade_level,Lowest_sal,Highest_sal)
values('A',1000,2999),('B',3000,5999),('C',6000,9999)

select * from Job_Grades