create database if not exists class
default character set utf8
default collate utf8_general_ci;

use class;

create table students(
	id_student int not null auto_increment,
    student_name varchar(30),
    nationality varchar(20),
    city varchar(30),
    phone int(15),
    date_of_birth date,
    sex enum ('M', 'F'),
    profession varchar(30),
    height decimal (3,2),
    weight decimal (5,2),
    primary key (id_student)
)default charset = utf8;

desc students;

alter table students drop phone;
alter table students modify profession varchar(20);

