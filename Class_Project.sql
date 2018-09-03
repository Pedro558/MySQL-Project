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

insert into students (id_student, student_name, nationality, city, date_of_birth, sex, profession, height, weight) values
(default, 'Aaron Moss', 'United States', 'Califórnia','1985-12-03', 'M', 'Architect', '1.85', '89.68'),
(default, 'Julian Morgan', 'United States', 'Texas', '1988-04-05', 'M', 'Gardener', '1.76', '75.60'),
(default, 'Peter Milos', 'Canadá', 'Quebec','1995-05-02', 'M', 'Waiter', '1.69', '65.82'),
(default, 'Marty Kyle', 'England', 'New Castle','1982-01-03', 'M', 'Architect', '1.81', '75.60'),
(default, 'Scott Travinsky', 'England', 'Manchester', '1996-05-23', 'M', 'Driver', '1.71', '72.69'),
(default, 'Gary Fish', 'Ireland', 'Dublin','1999-06-03', 'M', 'Traveler', '1.79', '91.00'),
(default, 'Luis Mendez', 'Colombia', 'Cali', '1989-09-22', 'M', 'Singer', '1.89', '94.65'),
(default, 'Carl Johnson', 'United States', 'Oregon', '1990-04-16', 'M', 'Lawyer', '1.68', '74.69'),
(default, 'Jhon Walrehn', 'Ireland', 'Dublin','1975-02-13', 'M', 'Scientist', '1.79', '64.02'),
(default, 'Maximilian Arnold', 'Germany', 'Dortmund','1998-07-23', 'M', 'Football Player', '1.82', '75.26'),
(default, 'Jordan Harrison', 'England', 'Manchester','1989-08-17', 'M', 'Engineer', '1.85', '89.68'),
(default, 'Abby Moretz', 'United States', 'Califórnia', '1985-12-03', 'F', 'Model', '1.88', '54.22'),
(default, 'Gia Moore', 'United States', 'Kansas','1974-11-26', 'F', 'Jurist', '1.74', '59.99'),
(default, 'Julia Page', 'England', 'London','1981-06-12', 'F', 'Lawyer', '1.65', '89.68'),
(default, 'Brandi Tyler', 'United States', 'Texas','1983-08-25', 'F', 'Secretary', '1.62', '55.67'),
(default, 'Karime Gonzalez', 'Colombia', 'Medellín', '1994-06-26', 'F', 'Model', '1.81', '50.00'),
(default, 'Joana Maria', 'Brazil', 'Rio de Janeiro', '1988-03-30', 'F', 'Singer', '1.74', '60.10'),
(default, 'Briana Albright', 'United States', 'Oregon', '1981-05-20', 'F', 'Cooker', '1.61', '85.18'),
(default, 'Kylie Robertson', 'United States', 'Kansas', '1995-09-11', 'F', 'Programmer', '1.71', '53.15'),
(default, 'Luisa Silva', 'Brazil', 'São Paulo','1985-08-30', 'F', 'Teacher', '1.69', '56.22'),
(default, 'Danik Arandula', 'Colombia', 'Acapulco','1992-07-11', 'F', 'Life Guard', '1.76', '61.69');

select * from students;

delete from students where id_student = '21' limit 1;

create table courses (
	id_course int not null auto_increment,
    course_name varchar(20),
    description text (50),
    workload float (3,1) unsigned,
    total_lessons int unsigned,
    primary key (id_course)
)default charset = utf8;

desc courses;
