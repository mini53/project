drop table users;
create table users(
	userid varchar2(30) primary key,
	status number(1) default 0,
	pwd varchar2(16),
	name varchar2(20),
	gender varchar2(5)
)

select * from users;

select * from users where userid = 'wkdgns' and pwd = '123'

create table users(
userid   varchar2(30) primary key,    
status   number(1)   default 0,
pwd	     varchar2(16),
name	 varchar2(20),
category varchar2(6),
gender	 number(1) constraint ck_gender check ( gender in ( 1,2) ),
business varchar2(6),
dept	 varchar2(6),
edate	 date default sysdate,
mdate	 date,
cdate	 date );
select * from users;