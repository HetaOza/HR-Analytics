show databases;
use da_project;
show tables;
select count(*) from hr_1;
select count(*) from hr_2;
SET SQL_SAFE_UPDATES = 0;
select * from hr_1;
select * from hr_2;
alter table hr_1 change column ï»¿Age Age int;


-- KPI-1 Average Attrition rate for all Departments
select department, concat(avg(attrision_y)*100,"%") as Attrition_Rate from hr_1 group by department;

-- KPI-2 Average Hourly rate of Male Research Scientist
Select * from hr_1;
select jobrole, gender, avg(hourlyrate) from hr_1 where jobrole = "research scientist" and Gender = "male" group by jobrole, gender;

-- KPI-3 Attrition rate Vs Monthly income stats
select * from hr_2;
select * from hr_1;
select department, avg(monthlyincome) as Average_Monthaly_Income, concat(avg(attrision_y)*100,"%") as Average_Attrition_Rate from Hr_1
 inner join hr_22  on employeenumber = EmployeeID group by department;

-- KPI-4 Average working years for each Department
select department, avg(totalworkingyears) from hr_22 inner join hr_1 on employeenumber = EmployeeID group by department;

-- KPI-5 Job Role Vs Work life balance
select * from hr_1;
select * from hr_22;
select Jobrole, round(avg(worklifebalance),2) as Avg_Worklife_Balance from hr_22 left join hr_1 on employeenumber = EmployeeID group by jobrole;

-- KPI-6 Attrition rate Vs Year since last promotion relation
select jobrole, concat(round(avg(attrision_y)*100,2),"%") as Average_Attrition, round(avg(Yearssincelastpromotion),2) as Average_Yearsincelastpromotion
from hr_22 inner join hr_1 on employeenumber = EmployeeID group by jobrole;






