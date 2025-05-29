use 2408b3

create table department (emp_id int primary key,emp_name varchar (100));

create table employee (depat_num int primary key,dep_name varchar (100),dep_id int, foreign key (dep_id) references department (emp_id))

insert into department (emp_id,emp_name) values (101,"sara")
insert into department (emp_id,emp_name) values (102,"sana")

insert into employee (depat_num,dep_name,dep_id) values (12,"ALI",101)
insert into employee (depat_num,dep_name,dep_id) values (2,"AHMED",102)


select *from department
select *from employee