create table team( 
id         int    primary key AUTO_INCREMENT, 
teamname     varchar(20)  unique ,
status    tinyint    default 1,
category varchar(6),
theme   varchar(20),
goal   varchar(20),
content   varchar(300),
sdate   date,
times   tinyint check ( times between 1 and 100) ,
weekend   tinyint check ( weekend between 1 and 3),
ddate   date,
numbers   tinyint check ( numbers between 1 and 100),
userid   varchar(30),
location   varchar(30),
edate    DATETIME default CURRENT_TIMESTAMP,
mdate    DATETIME on update CURRENT_TIMESTAMP,
cdate    DATETIME
);
select * from team;

create table member( 
id        int, 
userid    varchar(30),
status    tinyint  default 1,
greeting varchar(40),
edate    DATETIME default CURRENT_TIMESTAMP,
cdate    DATETIME,
constraint pk_member primary key(id,userid)
);
select * from member;

create table round( 
id       int, 
round   tinyint check ( round between 1 and 100) ,
status   tinyint default 0,
userid   varchar(30),
content   varchar(300),
ddate   date,
frtime   int, check ( frtime between 0000 and 2400),
totime   int, check ( totime between 0000 and 2400),
ncontent   varchar(300),
edate    DATETIME default CURRENT_TIMESTAMP,
mdate    DATETIME on update CURRENT_TIMESTAMP,
cdate   DATETIME,
constraint pk_round primary key(id,round)
);
select * from round;

create table absent( 
id       int,
round   tinyint,
userid   varchar(30),
absent   tinyint default 1,
edate    DATETIME default CURRENT_TIMESTAMP,
mdate    DATETIME on update CURRENT_TIMESTAMP,
constraint pk_absent primary key(id,round,userid)
);
select * from absent; 

create table score( 
id       int,
userid   varchar(30),
puserid   varchar(30),
status   tinyint default 0,
score1   tinyint check ( score1 between 0 and 5),
score2   tinyint check ( score2 between 0 and 5),
score3   tinyint check ( score3 between 0 and 5),
score4   tinyint check ( score4 between 0 and 5),
edate    DATETIME default CURRENT_TIMESTAMP,
cdate    DATETIME,
constraint pk_score primary key(id,userid,puserid)
);
create index idx_score_userid on score ( userid);
create index idx_score_puserid on score (puserid);
select * from score; 

create table code( 
code     varchar(6) primary key,
status   tinyint  default 0,
cname   varchar(16),
edate    DATETIME default CURRENT_TIMESTAMP,
cdate   DATETIME );
select * from code;


=============================================================


create table board(
seq      int primary key AUTO_INCREMENT,
status   tinyint,
userid   varchar(30),
subject   varchar(100),
content   blob,
hit       int,
logtime   DATETIME default CURRENT_TIMESTAMP,
btype   tinyint,
username varchar(20)
);

create table board_list(
bcode   smallint primary key,
bname   varchar(100),
btype   tinyint,
ccode   tinyint
);

create table board_type(
btype   tinyint primary key ,
btype_name   varchar(100)
);
create table category(
ccode   tinyint primary key,
cname   varchar(100)
);
create table memo(
mseq    int primary key AUTO_INCREMENT,
seq        int,
mcontent varchar(500)
);
CREATE  INDEX idx_board_list_btype ON board_list (btype);
CREATE  INDEX idx_board_list_ccode ON category (ccode);
alter table board_list add constraint fk_board_list_btype foreign key(btype) references  board_type (btype);
alter table board_list add constraint fk_board_list_ccode foreign key(ccode) references  category (ccode);
create index idx_board_index1 on board ( id,btype,obid,step);
create index board_index2 on board ( username, id,btype,bid);




show tables


create table users(
userid   varchar(30) primary key,    
status   tinyint default 0,
pwd        varchar(16),
username varchar(20) unique,
category varchar(6) ,
gender    char(1)   check ( gender in ('M','F') ),
business varchar(6) ,
dept     varchar(6) ,
edate    DATETIME default CURRENT_TIMESTAMP,
mdate    DATETIME on update CURRENT_TIMESTAMP,
cdate    DATETIME
);



