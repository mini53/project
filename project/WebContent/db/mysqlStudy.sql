use mysql;
drop table users;
create table users(
userid   varchar(30) primary key,    
status   int(1)   default 0,
pwd	     varchar(16),
username varchar(20) unique,
category varchar(6) ,
gender	 char(1)   check ( gender in ('M','F') ),
business varchar(6) ,
job	     varchar(6) ,
edate	 DATETIME default CURRENT_TIMESTAMP,
mdate	 DATETIME current_timestamp default on update current_timestamp,
cdate	 DATETIME current_timestamp default on update current_timestamp
);
select * from users;


drop table board;
create table board(
seq   	int primary key AUTO_INCREMENT,
status	tinyint,
userid	varchar(30),
subject	varchar(100),
content	blob,
hit	    int,
logtime	DATETIME default CURRENT_TIMESTAMP,
btype	tinyint,
username varchar(20)
);

drop table memo;
create table memo(
mseq	 int primary key AUTO_INCREMENT,
seq	     int,
mcontent varchar(500)
);


drop table board_list;
create table board_list(
bcode	smallint,
bname	varchar(100),
btype	tinyint,
ccode	tinyint
);

CREATE  INDEX idx_board_list_btype ON board_list (btype);
CREATE  INDEX idx_board_list_ccode ON category (ccode);
alter table board_list add constraint fk_board_list_btype foreign key(btype) references  board_type (btype);


create table category(
ccode   tinyint,
cname	varchar(100)
);


create table board_ype(
btype	tinyint,
btype_name	varchar(100)
);

drop table team;
create table team( 
id	      number(7)    primary key,  
name     varchar2(20)  unique ,
status	  number(1)    default 1,
category varchar2(6),
theme	varchar2(20),
goal	varchar2(20),
content	varchar2(300),
sdate	date,
times	number(3) check ( times between 1 and 100) ,
weekend	number(1) check ( weekend between 1 and 3),
ddate	date,
numbers	number(3) check ( numbers between 1 and 100),
userid	varchar2(30),
edate	date default sysdate,
mdate	date,
cdate	date
);
select * from team;

drop table member;
create table member( 
id	     number(7) , 
userid	 varchar2(30),
status	 number(1) default 1,
greeting varchar2(40),
edate	 date default sysdate,
cdate	 date,
constraint pk_member primary key(id,userid)
);
create index member_index1 on member ( userid,id);
select * from member;

drop table round;
create table round( 
id	    number(7) , 
round	number(3) check ( round between 1 and 100) ,
status	number(1) default 0,
userid	varchar2(30),
content	varchar2(300),
ddate	date,
frtime	number(4) check ( frtime between 0000 and 2400),
totime	number(4) check ( totime between 0000 and 2400),
ncontent	varchar2(300),
edate	date default sysdate,
mdate	date,
cdate	date,
constraint pk_round primary key(id,round)
);
select * from round;


drop table absent; 
create table absent( 
id	    number(7),
round	number(3),
userid	varchar2(30),
absent	number(1) default 1,
edate	date default sysdate,
mdate	date,
constraint pk_absent primary key(id,round,userid)
);
select * from absent; 

drop table score;
create table score( 
id	number(7),
userid	varchar2(30),
puserid	varchar2(30),
status	number(1) default 0,
score1	number(3) constraint ck_score1 check ( score1 between 0 and 5),
score2	number(3) constraint ck_score2 check ( score2 between 0 and 5),
score3	number(3) constraint ck_score3 check ( score3 between 0 and 5),
score4	number(3) constraint ck_score4 check ( score4 between 0 and 5),
edate	date default sysdate,
cdate	date,
constraint pk_score primary key(id,userid,puserid)
);
create index score_index1 on score ( userid);
create index score_index2 on score ( puserid);
select * from score; 

drop table code; 
create table code( 
code  	varchar2(6) primary key,
status	number(1)  default 0,
cname	varchar2(16),
edate	date default sysdate,
cdate	date );
select * from code;

drop table board; 
create table board( 
bid	number(7) primary key ,
status	number(1) default 0,
id	number(7) ,
userid	varchar2(30),
title	varchar2(40),
text	varchar2(1200),
hit	    number(4) default 0,
obid	number(7),
step	number(4),
edate	date default sysdate,
cdate	date,
btype	number(1),
username varchar2(20)
);
create index board_index1 on board ( id,btype,obid,step);
create index board_index2 on board ( username, id,btype,bid);
select * from board;


alter table users add constraint fk_users_category foreign key(category) references  code (code);
alter table users add constraint fk_users_business foreign key(business) references  code (code);
alter table users add constraint fk_users_job	 foreign key(job) references  code (code); 
alter table team  add constraint fk_team_category foreign key(category) references  code (code);
alter table member add constraint fk_member_id foreign key(id) references  team (id);
alter table member add constraint fk_member_userid foreign key(userid) references  users (userid)
alter table round  add constraint fk_round_id foreign key(id) references  team (id);
alter table absent add constraint fk_absent_id foreign key(id) references  team (id);
alter table absent add constraint fk_absent_userid foreign key(userid) references  users (userid);
alter table score add constraint fk_score_id foreign key(id) references  team (id);
alter table score add constraint fk_score_userid foreign key(userid) references  users (userid);
alter table score add constraint fk_score_puserid foreign key(puserid) references  users (userid);
alter table board add constraint fk_board_id foreign key(id) references  team (id);
alter table board add constraint fk_board_userid foreign key(userid) references  users (userid);

alter table users drop constraint fk_users_category foreign key(category) references  code (code);
alter table users drop constraint fk_users_business foreign key(business) references  code (code);
alter table users drop constraint fk_users_job	 foreign key(job) references  code (code); 
alter table team  drop constraint fk_team_category foreign key(category) references  code (code);
alter table member drop constraint fk_member_id foreign key(id) references  team (id);
alter table member drop constraint fk_member_userid foreign key(userid) references  users (userid);
alter table round  drop constraint fk_round_id foreign key(id) references  team (id);
alter table absent drop constraint fk_absent_id foreign key(id) references  team (id);
alter table absent drop constraint fk_absent_userid foreign key(userid) references  users (userid);
alter table score drop constraint fk_score_id foreign key(id) references  team (id);
alter table score drop constraint fk_score_userid foreign key(userid) references  users (userid);
alter table score drop constraint fk_score_puserid foreign key(puserid) references  users (userid);
alter table board drop constraint fk_board_id foreign key(id) references  team (id);
alter table board drop constraint fk_board_userid foreign key(userid) references  users (userid);


create sequence team_seq;
create sequence board_seq;


alter table board_list add constraint fk_board_list_btype foreign key(btype) references  board_type (btype);
alter table board drop constraint fk_board_userid foreign key(userid) references  users (userid)