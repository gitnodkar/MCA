create database TEECE;
use TEECE;
create table STUD_INFO2 (ROLL_NO char(10), NAME varchar(30), EMAIL_ID varchar(30), MOBILE_NO char(10), COURSE varchar(30));
alter table STUD_INFO2 ADD CITY varchar(30);
alter table STUD_INFO2 DROP CITY;
alter table STUD_INFO2 ADD CITY varchar(30);
alter table STUD_INFO2 RENAME COLUMN CITY to ADDRESS;
create VIEW VIEW1 as select ROLL_NO, NAME from STUD_INFO2 where ADDRESS = 'Pune';
create index INDEX1 on STUD_INFO2(NAME);
insert into  STUD_INFO2( ROLL_NO, NAME, MOBILE_NO) values(65,"Sourabh",9168801071);
insert into  STUD_INFO2( ROLL_NO, NAME, MOBILE_NO) values(55,"Ganesh",9168801071);
insert into  STUD_INFO2( ROLL_NO, NAME, MOBILE_NO) values(60,"Mahesh",9168801071);
insert into  STUD_INFO2( ROLL_NO, NAME, MOBILE_NO) values(51,"Abhay",9168801071);
insert into  STUD_INFO2( ROLL_NO, NAME, MOBILE_NO) values(64,"Aniket",9168801071);
insert into  STUD_INFO2( ROLL_NO, NAME, MOBILE_NO) values(56,"Ved",9168801071);
truncate table STUD_INFO2;
alter table STUD_INFO2 ADD MARKS char(10);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(65,"Sourabh","sourabhzanpure@gmail.com",9168801071,"ECE","Pune",27);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(55,"Ganesh","ganesh@gmail.com",9168801071,"ECE","Pune",26);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(65,"Mahesh","mahesh@gmail.com",9168801071,"ECE","Pune",25);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(51,"Abhay","abhay@gmail.com",9168801071,"ECE","Pune",24);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(64,"Aniket","aniket@gmail.com",9168801071,"ECE","Pune",23);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(56,"Ved","ved@gmail.com",9168801071,"ECE","Mumbai",22);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(62,"Anish","anish@gmail.com",9168801071,"ECE","Mumbai",27);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(61,"Abhay","abhay@gmail.com",9168801071,"ECE","Mumbai",26);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(01,"Akash","akash@gmail.com",9168801071,"ECE","Mumbai",26);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(02,"Samarth","samarth@gmail.com",9168801071,"ECE","Mumbai",25);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(03,"Vedant","vedant@gmail.com",9168801071,"ECE","SambhajiNagar",24);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(23,"Aniket","aniket@gmail.com",9168801071,"ECE","SambhajiNagar",23);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(05,"Kapil","kapil@gmail.com",9168801071,"ECE","SambhajiNagar",22);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(12,"Nilesh","nilesh@gmail.com",9168801071,"ECE","SambhajiNagar",21);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(11,"Nisarg","nisarg@gmail.com",9168801071,"ECE","Nagpur",21);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(71,"Pavan","pavan@gmail.com",9168801071,"ECE","Nagpur",20);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(74,"Ronak","ronak@gmail.com",9168801071,"ECE","Nagpur",20);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(73,"Sourabh","sourabh@gmail.com",9168801071,"ECE","Nagpur",19);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(53,"Prathamesh","prathamesh@gmail.com",9168801071,"ECE","SambhajiNagar",19);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(52,"Atharva","aharva@gmail.com",9168801071,"ECE","Nagpur",19);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(58,"Atharva","atharva@gmail.com",9168801071,"ECE","Nashik",18);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(54,"Siddhant","siddhantgmail.com",9168801071,"ECE","Nashik",25);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(31,"Shantanu","shantanu@gmail.com",9168801071,"ECE","Nashik",24);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(33,"Shantanu","shantanu@gmail.com",9168801071,"ECE","Nashik",26);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(45,"Kaushal","kaushal@gmail.com",9168801071,"ECE","Thane",23);
insert into STUD_INFO2 (ROLL_NO, NAME, EMAIL_ID, MOBILE_NO, COURSE, ADDRESS, MARKS) values(18,"Rugved","rugved@gmail.com",9168801071,"ECE","Thane",22);
select NAME,MARKS from STUD_INFO2 where NAME="Atharva";
select NAME,MARKS from STUD_INFO2 where Marks=25;
select * from STUD_INFO2;
select distinct ROLL_NO,ADDRESS from STUD_INFO2;
