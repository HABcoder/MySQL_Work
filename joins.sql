use 2408b3

create table teacher(
Teacher_id int primary key AUTO_Increment,
TeacherName varchar(50),
Teacher_subject varchar(50));

create table student(
Stud_id int primary key AUTO_Increment,    
stud_Name varchar(50),    
Grade varchar(50),   
TeacherId int,   
 foreign key (TeacherId) references teacher(Teacher_id));

insert into teacher (TeacherName,Teacher_subject) values
("Ahmed","Math"),
("Sara","English"),
("Bilal","Science"),
("Hira","History"),
("Kamran","Computer"),
("Ayesha","Geography");

insert into student (stud_Name,Grade,TeacherId) values
("Fariya","C",Null),
("Ali","A",2),
("Zara","B",2),
("Usama","A",1),
("Areeba","C",3),
("Hamza","A",4),
("Hina","B",6); 

insert into teacher (TeacherName,Teacher_subject)values ("Hiba","Math")

select * from teacher
select * from student

select * from student inner join teacher on teacher.Teacher_id = student.TeacherId

select s.stud_Name, t.TeacherName, t.Teacher_subject from student s inner join teacher t on t.Teacher_id = s.TeacherId where t.TeacherName like "A%";

select s.stud_Name, t.TeacherName, t.Teacher_subject from student s inner join teacher t on t.Teacher_id = s.TeacherId where s.Grade = "B"

select s.stud_Name,s.Grade, t.TeacherName, t.Teacher_subject from student s inner join teacher t on t.Teacher_id = s.TeacherId where s.Grade = "A"

select TeacherName,Teacher_subject from student left join teacher on student.TeacherId = teacher.Teacher_id where student.stud_Name like "H%"

select * from student right join teacher on student.TeacherId = teacher.Teacher_id where student.stud_Name like "H%"

select * from student left join teacher on student.TeacherId = teacher.Teacher_id
union
select * from student right join teacher on student.TeacherId = teacher.Teacher_id

select t1.TeacherName,t2.TeacherName,t1.Teacher_subject from teacher t1 join teacher t2 on t1.Teacher_subject = t2.Teacher_subject where t1.Teacher_id <> t2.Teacher_id

-- Union
select stud_Name as Names from student union select TeacherName from teacher

select * from teacher left join student on teacher.Teacher_id = student.TeacherId  
union
select * from teacher right join student on teacher.Teacher_id = student.TeacherId













