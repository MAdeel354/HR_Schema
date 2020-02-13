create table Regions(
Region_ID int Primary Key NOT NULL,
Region_Name varchar(10),
)

create table Countries(
Country_ID char(2) primary key NOT NULL,
Country_Name varchar(15),
Region_ID int foreign key references Regions(Region_ID)
)

create table Locations(
Location_ID Numeric(4) primary key NOT NULL,
Street_address varchar(40),
Postal_code varchar(12),
City varchar(30) NOT NULL,
State_Province varchar(25),
Country_ID char(2) foreign key references Countries(Country_ID)
)

drop table Departments

create table Departments(
Department_ID numeric(4) primary key NOT NULL,
Department_Name varchar(30) NOT NULL,
Manager_ID numeric(6) NULL,
Location_ID numeric(4) foreign key references Locations(Location_ID),
)
drop table Jobs

create table Jobs(
Job_ID varchar(10) primary key NOT NULL,
Job_Title varchar(35) NOT NULL,
MIN_Salary numeric(6),
MAX_Salary numeric(6)
)

drop table Employees
create table Employees(
Employee_ID numeric(6) Primary Key NOT NULL,
First_Name varchar(20),
Last_Name varchar(25) NOT NULL,
E_Mail varchar(25) NOT NULL,
Phone_Number varchar(20),
Hire_Date Date NOT NULL,
Salary numeric(8,2),
Commission_PCT numeric(2,2),
Manager_ID numeric(6) NULL,
Department_ID numeric(4) foreign key references Departments(Department_ID),
Job_ID varchar(10) foreign key references Jobs(Job_ID),
)

drop table Job_history

create table Job_History(
Date_Start Date NOT NULL,
Date_End Date NOT NULL,
Employee_ID numeric(6) foreign key references Employees(Employee_ID),
Job_ID varchar(10) foreign key references Jobs(Job_ID),
Department_ID numeric(4) foreign key references Departments(Department_ID)
)

create table Job_Grades(
Grade_level varchar(3),
Lowest_sal numeric,
Highest_sal numeric
)