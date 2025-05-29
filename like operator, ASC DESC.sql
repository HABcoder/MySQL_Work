use 2408b3


create table Userrs(
UserId int primary key AUTO_INCREMENT,
UserName varchar(225),
 Education Varchar(225), 
 Salary int,
 Age int,
phone int,
city varchar(225))auto_increment = 101

select * from Userrs

insert into Userrs(UserName,Education,Salary, Age,phone,city) values ("Ahmed","inter",20000,22,0335987456,"Karachi")
insert into Userrs(UserName,Education,Salary, Age,phone,city) values ("ALIa","inter",80000,22,078987456,"Lahore")
insert into Userrs(UserName,Education,Salary, Age,phone,city) values ("aelia","matrix",83000,50,07895656,"Islama")
insert into Userrs(UserName,Education,Salary, Age,phone,city) values ("ayesha","Graduate",90000,29,0789856,"Karachi")
insert into Userrs(UserName,Education,Salary, Age,phone,city) values ("Fahad","Graduate",30000,24,0335327456,"Lahore")
insert into Userrs(UserName,Education,Salary, Age,phone,city) values ("Sajid","inter",40000,25,0335957456,"Karachi")
insert into Userrs(UserName,Education,Salary, Age,phone,city) values ("Saad","Graduate",50000,28,0334987456,"Islamabad")
insert into Userrs(UserName,Education,Salary, Age,phone,city) values ("Zaid","Master",60000,27,0339687456,"Lahore")



select * from Userrs
-- Find average salary for a given city using input or output parameter.
 delimiter //
create procedure task2(IN city_name varchar(50), out result int)
BEGIN
select avg(Salary) into result from Userrs where city = city_name;
END//
delimiter //
call task2("Karachi", @result);
select @result

-- List all customers from a specific city using input parameter 
delimiter //
create procedure speci_city(in spcity varchar(50))
begin
select * from Userrs where city = spcity;
end //
delimiter //
call speci_city("Karachi") 


alter table Userrs add emp_id int primary key auto_increment = "101"



subquery 
select UserName, Salary from Userrs where Salary > (select avg(Salary) from Userrs)

select UserName, Salary from Userrs where UserId in (select UserId from Userrs where Education = "inter")

select UserName , Salary, city from Userrs where city in (select city from Userrs where city = "Lahore")

-- simple procedure
DELIMITER //
create procedure sp_cust() 
BEGIN 
select city, sum(Salary) from Userrs where UserName like "A%" group by city;
END//
DELIMITER //

 CALL sp_cust() 






      -- Assissgnment 1 
--   Get average salary per city, but only show cities where average salary is above 28000.
select city, avg(Salary) as total_salary from Userrs group by city having sum(Salary) > 28000

--  Show average salary per city where average salary is more than 28000, and only for customers whose name ends with ‘a’
select city, avg(Salary) as average_salary from Userrs where UserName like "%a" group by city having sum(Salary) > 28000 

-- Find cities where the maximum salary among customers is more than 30,000, grouped by city
select city, max(Salary) as maximum_salary from Userrs group by city having max(Salary) > 30000  

select * from Userrs


select * from Userrs order by Salary DESC;
select * from Userrs order by city ASC;
select * from Userrs where UserName like "_a__"
select * from Userrs where UserName like "__h%"
select * from Userrs where UserName like "%id%"
select * from Userrs where UserName like "a%"

-- single group by 
select city, sum(Salary) as total_salary from Userrs group by city

-- mutliple group by 2 columns 
select city,education, sum(Salary) as total_salary from Userrs group by city,education

-- group by like operator
select education, count(city) as city_count from Userrs where  UserName like "s%" OR UserName like "f_h%" group by education

select education, max(Salary) as total_salary from Userrs where city like "Karachi" and Age between 24 and 27 group by education

select city, sum(Salary) as total_salary from Userrs where UserName like "S%" group by city having sum(Salary) > 10000
















