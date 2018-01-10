drop table users;
create table users(
	userid varchar2(30) primary key,
	status number(1) default 0,
	pwd varchar2(16),
	name varchar2(20),
	gender varchar2(5)
)

select * from users;

select userid from users where userid = 'wkdgndldi' and pwd = '1234'

create table users(
userid   varchar2(30) primary key,    
status   number(1)   default 0,
pwd	     varchar2(16),
username	 varchar2(20),
category varchar2(20),
gender	 char(1),
business varchar2(20),
job	 varchar2(20),
edate	 date default sysdate,
mdate	 date,
cdate	 date );

select * from users;

