drop table board;
create table board(
seq   	number primary key ,
status	number,
userid	varchar2(30),
subject	varchar2(100),
content	clob,
hit	    number,
logtime	date default sysdate,
btype	number,
username varchar2(20)
);

drop table memo;
create table memo(
mseq	 number primary key ,
seq	     number,
mcontent varchar2(500)
);


drop table board_list;
create table board_list(
bcode	number,
bname	varchar2(100),
btype	number,
ccode	number
);



create table category(
ccode   number,
cname	varchar2(100)
);


create table board_ype(
btype	number,
btype_name	varchar2(100)
);


create sequence mseq;
create sequence seq;

=====================================
CREATE  INDEX idx_board_list_btype ON board_list (btype);
CREATE  INDEX idx_board_list_ccode ON category (ccode);
alter table board_list add constraint fk_board_list_btype foreign key(btype) references  board_type (btype);


drop table users;
create table users(
userid   varchar2(30) primary key,    
status   number(1)   default 0,
pwd	     varchar2(16),
username varchar2(20) unique,
category varchar2(6) ,
gender	 char(1)   check ( gender in ('M','F') ),
business varchar2(6) ,
job	     varchar2(6) ,
edate	 date default sysdate,
mdate	 date,
cdate	 date
);
select * from users;

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
