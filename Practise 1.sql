create database schooldb;
 use schooldb;
 create table students(
	StudentId int Primary Key,
	StudentName varchar(50),
	Age int ,
	Course Varchar(50),
	Marks decimal(5,2)
 );

 insert into students(StudentId,StudentName,Age,Course,Marks) values (1,'Priyanshu Yadav',21,'Imca',80.32),(2,'Isha Joshi',22,'BBA',85.45),(3,'Pari hadvaid',23,'BCA',83.34);

 select * from students;

 select * from students where age>22;
 select *from students StudentsName where age>21;