use 2408b3
create table users (user_id int primary key AUTO_INCREMENT, user_name varchar(200),user_adress varchar(100))

insert into users (user_id,user_name,user_adress) values (101,"Mirha","datsgir num 12/13")
insert into users (user_id,user_name,user_adress) values (102,"Maham","gulshan num 12/13")
insert into users (user_name,user_adress) values ("Maham","karimabad num 12/13")

select *from users