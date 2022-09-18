create database quanLyHocVien;
use quanLyHocVien;
create table Address(
id int primary key,
address varchar(45)
);
create table Classes(
id int primary key,
name varchar(45),
language varchar(45),
description varchar(45)
);
create table Students(
id int primary key,
fullname varchar(45),
address_id int ,
foreign key (address_id) references Address(id),
age int,
phone varchar(10) unique,
classes_id int,
foreign key (classes_id) references Classes(id)
);
create table Course(
id int primary key,
name varchar(45),
description varchar(45)
);
create table Point(
id int primary key,
course_id int,
student_id int,
point int,
check(point between 0 and 100),
foreign key (course_id) references Course(id),
foreign key (student_id) references Students(id)
);
insert into Address(id, address) value (1, 'Ha Noi');
insert into Address(id, address) value (2, 'Quang Binh');
insert into Address(id, address) value (3, 'Hue');
insert into Address(id, address) value (4, 'Da Nang');
insert into Address(id, address) value (5, 'Ho Chi Minh');
insert into Classes(id, name, language, description) value(1,'C0622I1','Java','in 6 months');
insert into Classes(id, name, language, description) value(2,'C0722I1','Java','in 6 months');
insert into Classes(id, name, language, description) value(3,'C0822I1','Java','in 6 months');
insert into Classes(id, name, language, description) value(4,'C0922I1','Java','in 6 months');
insert into Classes(id, name, language, description) value(5,'C1022I1','Java','in 6 months');
insert into Students(id,fullname,address_id,age,phone,classes_id) value (1, 'Le Minh Tuan', 1, 24, 0987878787,1);
insert into Students(id,fullname,address_id,age,phone,classes_id) value (2, 'Pham Van Han', 2, 27, 0983456543,2);
insert into Students(id,fullname,address_id,age,phone,classes_id) value (3, 'Nguyen Thanh Vinh', 3, 22, 0962656456,3);
insert into Students(id,fullname,address_id,age,phone,classes_id) value (4, 'Duong Van Hieu', 4, 25, 0978951234,4);
insert into Students(id,fullname,address_id,age,phone,classes_id) value (5, 'Nguyen Van THuong', 5, 24, 0923453456,5);
insert into Students(id,fullname,address_id,age,phone,classes_id) value (6, 'Truong Huy Hoang', 1, 23, 0954565346,1);
insert into Students(id,fullname,address_id,age,phone,classes_id) value (7, 'Nguyen Duy Hung', 2, 24, 0976567456,2);
insert into Students(id,fullname,address_id,age,phone,classes_id) value (8, 'Vu Thi Kieu Anh', 3, 29, 0945653452,3);
insert into Students(id,fullname,address_id,age,phone,classes_id) value (9, 'Le Hong Quan', 4, 30, 0955643465,4);
insert into Students(id,fullname,address_id,age,phone,classes_id) value (10, 'Pham Huy Trung', 5, 30, 0912323432,5);
insert into Course(id,name,description) value(1, 'Preparation', 'in one month');
insert into Course(id,name, description) value(2, 'Java Advanced', 'in one month');
insert into Point(id,course_id,student_id,point) value (1,1,1,80);
insert into Point(id,course_id,student_id,point) value (2,1,2,90);
insert into Point(id,course_id,student_id,point) value (3,1,3,95);
insert into Point(id,course_id,student_id,point) value (4,1,4,100);
insert into Point(id,course_id,student_id,point) value (5,1,5,80);
insert into Point(id,course_id,student_id,point) value (6,1,6,75);
insert into Point(id,course_id,student_id,point) value (7,1,7,65);
insert into Point(id,course_id,student_id,point) value (8,1,8,75);
insert into Point(id,course_id,student_id,point) value (9,1,9,89);
insert into Point(id,course_id,student_id,point) value (10,1,10,71);
insert into Point(id,course_id,student_id,point) value (11,2,1,65);
insert into Point(id,course_id,student_id,point) value (12,2,2,72);
insert into Point(id,course_id,student_id,point) value (13,2,3,73);
insert into Point(id,course_id,student_id,point) value (14,2,4,75);
insert into Point(id,course_id,student_id,point) value (15,2,5,80);
select * from students where fullname like 'Nguyen%';
select * from students where fullname like '%Anh';
select * from students where age between 18 and 25;
select * from students where id =1 or id=2;
select classes_id from Students where classes_id like 5;
SELECT students.classes_id, classes.name, COUNT(students.id) AS 'Số sinh viên'
FROM students, classes
WHERE students.classes_id = classes.id
GROUP BY students.classes_id, classes.name;
SELECT students.address_id, address.address, COUNT(students.id) AS 'Số sinh viên'
FROM students, address
WHERE students.address_id = address.id
GROUP BY students.address_id, address.address;
select course.name, avg(distinct point.point) 'AverageScore'
from Point join Course on Point.course_id=course.id
group by course.id
;







