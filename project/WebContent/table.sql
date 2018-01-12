drop table users;
drop table team;
select * from users;

select userid from users where userid = 'wkdgndldi' and pwd = '1234'

create table users(
userid   varchar(30) primary key,    
status   int(1)   default 0,
pwd        varchar(16),
username    varchar(20),
category varchar(20),
gender    char(1),
business varchar(20),
job    varchar(20),
edate    datetime default current_timestamp,
mdate    datetime,
cdate    datetime);





select * from users;

select username from users where username = 'nk';


create table team( 
id       int(7) NOT NULL AUTO_INCREMENT PRIMARY KEY ,  
teamname     varchar(20)  unique ,
status     int(1)    default 1,
category varchar(6),
theme   varchar(20),
goal   varchar(20),
content   varchar(300),
sdate varchar(20),
times   int(3) check ( times between 1 and 100) ,
weekend   int(1) check ( weekend between 1 and 3),
ddate varchar(20),
numbers   int(3) check ( numbers between 1 and 100),
userid   varchar(30),
edate   datetime default current_timestamp,
mdate   datetime,
cdate   datetime
);

insert into team(teamname, category, theme, goal, content,sdate, times,
weekend, ddate, numbers, userid) 
values('hell', 'hell', 'hell', 'hell', 'hell', '1908-11-11', 7, 0, '1908-11-11', 4, 'wkdgndldi')


select * from team;