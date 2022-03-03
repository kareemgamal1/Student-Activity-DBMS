create table Members(
Member_ID number(10) primary key,
Supporter_ID number(10),
Member_F_Name varchar(20),
Member_L_Name varchar(20),
Member_SSN number(14),
Member_Sex varchar(1),
Member_Email varchar(50) unique,
Member_Join_Date date,
Committee_ID number(20),
CONSTRAINT fk_supporter_id FOREIGN KEY (Supporter_ID) REFERENCES Members(Member_ID),
CONSTRAINT fk_members_committee_id FOREIGN KEY (Committee_ID) REFERENCES Committee(Committee_ID)
);

create table Head(
Head_ID number(10) primary key,
Head_SSN number(14),
Head_F_Name varchar2(20),
Head_L_Name varchar2(20),
Head_Sex varchar2(1),
Head_Email varchar2(50) unique,
Head_Join_Date date,
Committee_ID number(20),
Vice_ID number(10),
CONSTRAINT fk_vice_id FOREIGN KEY (Vice_ID) REFERENCES Vice_President(Vice_ID),
CONSTRAINT fk_head_committee_id FOREIGN KEY (Committee_ID) REFERENCES Committee(Committee_ID)
);

create Table Vice_President(
Vice_ID number(10) primary key,
Vice_SSN number(14) not null unique, 
Vice_F_Name varchar2(20),
Vice_L_Name varchar2(20),
Vice_Sex varchar2(1),
Vice_E_mail varchar2(50) unique, 
Vice_Join_date date,
President_ID number(10),
CONSTRAINT fk_president_id FOREIGN KEY (President_ID) REFERENCES President(President_ID)
);

create table President(
President_ID number(10) primary key,
President_SSN number(14) not null unique,
President_F_Name varchar2(20),
President_L_Name varchar2(20),
President_Sex varchar2(1),
President_E_mail varchar2(50) unique, 
President_Join_date date
);

create table Event(
Event_ID number(10) primary key,
Event_Start_Date date,
Event_End_Date date,
Event_Type varchar2(20),
Committee_ID number(20),
CONSTRAINT fk_event_committee_id FOREIGN KEY (Committee_ID) REFERENCES Committee(Committee_ID)
);

create table Sponsor(
Sponsor_ID number(20) primary key,
Sponsor_Type varchar(20),
Sponsor_Phone number(15),
Sponsor_Name varchar(20),
Sponsor_City varchar(20),
Sponsor_Area varchar(20),
Sponsor_Street_Name varchar(20),
Sponsor_Street_Number number(10)
);

create table Sponsors_Events(
Sponsor_Budget number(10),
Sponsor_ID number(20),
Sponsor_Event_ID number(10),
PRIMARY KEY(Sponsor_ID, Sponsor_Event_ID),
CONSTRAINT fk_sponsor_id FOREIGN KEY (Sponsor_ID) REFERENCES Sponsor(Sponsor_ID),
CONSTRAINT fk_event_id FOREIGN KEY (Sponsor_Event_ID) REFERENCES Event(Event_ID)
);

create table Committee(
Committee_ID number(20) primary key,
Committee_Name varchar2(20)
);

describe committee;

insert into committee values(1,'HR');
insert into committee values(2,'PR');
insert into committee values(3,'Media');
insert into committee values(4,'Web');
insert into committee values(5,'Machine Learning');
insert into committee values(6,'Cyber Security');

select *
from committee;

describe sponsor;


insert into sponsor (sponsor_id, sponsor_type, sponsor_phone, sponsor_name,
sponsor_city, sponsor_area, sponsor_street_name, sponsor_street_number)
values(121987,'money',01264873476 ,'mohamed hessin' ,'cairo' ,'nasr city','mostafa elnahas' ,34);

insert into sponsor (sponsor_id, sponsor_type, sponsor_phone, sponsor_name,
sponsor_city, sponsor_area, sponsor_street_name, sponsor_street_number)
values(2772002,'materials',01139754476 ,'mostafa ashraf' ,'algiza' ,'almohandesen','shehab' ,26);

select * from sponsor;



describe president;

insert into president(president_id, president_ssn, president_f_name, president_l_name
, president_sex, president_e_mail, president_join_date)
values(101,30200103713,'mostafa','hosny','M','mostafahosny287@gmail.com',TO_DATE('2020/07/09', 'yyyy/mm/dd'));

select * 
from president;

describe event;

insert into event(event_id, event_start_date, event_end_date, event_type, committee_id)
values(70698,TO_DATE('2021/12/30', 'yyyy/mm/dd'),TO_DATE('2022/2/5', 'yyyy/mm/dd'),'work shop',4);

insert into event(event_id, event_start_date, event_end_date, event_type, committee_id)
values(71222,TO_DATE('2022/4/25', 'yyyy/mm/dd'),TO_DATE('2022/6/5', 'yyyy/mm/dd'),'summer training',5);

insert into event(event_id, event_start_date, event_end_date, event_type, committee_id)
values(86391,TO_DATE('2022/1/5', 'yyyy/mm/dd'),TO_DATE('2022/2/20', 'yyyy/mm/dd'),'work shop',6);

select *
from event;

insert into vice_president(vice_id,vice_ssn, vice_f_name, vice_l_name, vice_sex,
vice_e_mail, vice_join_date, president_id)
values(69351,3020106948,'kareim','gamal','M','kareimm55@gmail.com',TO_DATE('2021/4/11', 'yyyy/mm/dd'),101);

insert into vice_president(vice_id,vice_ssn, vice_f_name, vice_l_name, vice_sex,
vice_e_mail, vice_join_date, president_id)
values(76301,3020306722,'mohamed','zahran','M','zahran00@gmail.com',TO_DATE('2021/4/6', 'yyyy/mm/dd'),101);

insert into vice_president(vice_id,vice_ssn, vice_f_name, vice_l_name, vice_sex,
vice_e_mail, vice_join_date, president_id)
values(80369,3020104241,'mohamed','ashraf','M','mohamedashraf@gmail.com',TO_DATE('2021/4/12', 'yyyy/mm/dd'),101);

insert into vice_president(vice_id,vice_ssn, vice_f_name, vice_l_name, vice_sex,
vice_e_mail, vice_join_date, president_id)
values(64451,3020108630,'abdo','sayed','M','abdo_sayed_@gmail.com',TO_DATE('2021/4/10', 'yyyy/mm/dd'),101);

insert into vice_president(vice_id,vice_ssn, vice_f_name, vice_l_name, vice_sex,
vice_e_mail, vice_join_date, president_id)
values(30691,3020236748,'salma','atef','F','salmaaaateff@gmail.com',TO_DATE('2021/4/3', 'yyyy/mm/dd'),101);

insert into vice_president(vice_id,vice_ssn, vice_f_name, vice_l_name, vice_sex,
vice_e_mail, vice_join_date, president_id)
values(40357,3020277236,'eman','ahmed','F','emanahmedd31@gmail.com',TO_DATE('2021/4/22', 'yyyy/mm/dd'),101);
describe vice_president;
select * 
from event;

insert into sponsors_events(sponsor_id, event_id, sponsor_budget)
values(2772002,70698,11000);

insert into sponsors_events(sponsor_id, event_id, sponsor_budget)
values(121987,71222,14500);

insert into sponsors_events(sponsor_id, event_id, sponsor_budget)
values(2772002,86391,9000);


select *
from sponsors_events;


insert into head(head_id, head_ssn, head_f_name, head_l_name,
head_sex, head_email, head_join_date, committee_id,vice_id)
values(1001,30209103823,'mohamed','ibrahim','M','mohamedibrahim20@gmailcom',TO_DATE('2020/08/25', 'yyyy/mm/dd'),
1,69351);

insert into head(head_id, head_ssn, head_f_name, head_l_name,
head_sex, head_email, head_join_date, committee_id,vice_id)
values(1002,30209643607,'ahmed','alaa','M','ahmedalaa@gmailcom',TO_DATE('2020/08/20', 'yyyy/mm/dd'),
2,76301);

insert into head(head_id, head_ssn, head_f_name, head_l_name,
head_sex, head_email, head_join_date, committee_id,vice_id)
values(1003,3020647368,'hager','ibrahim','F','hageribrahim36@gmailcom',TO_DATE('2020/08/21', 'yyyy/mm/dd'),
3,80369);

insert into head(head_id, head_ssn, head_f_name, head_l_name,
head_sex, head_email, head_join_date, committee_id,vice_id)
values(1004,30209736541,'nour','mohsen','F','nour_mohsen7@gmailcom',TO_DATE('2020/08/26', 'yyyy/mm/dd'),
4,64451);

insert into head(head_id, head_ssn, head_f_name, head_l_name,
head_sex, head_email, head_join_date, committee_id,vice_id)
values(1005,30209456308,'khaled','amgad','M','amgad333@gmailcom',TO_DATE('2020/8/22', 'yyyy/mm/dd'),
5,30691);

insert into head(head_id, head_ssn, head_f_name, head_l_name,
head_sex, head_email, head_join_date, committee_id,vice_id)
values(1006,30209103823,'abdelrahman','malik','M','abdomalik@gmailcom',TO_DATE('2020/8/24', 'yyyy/mm/dd'),
6,40357);

describe members;

insert into members(member_id, member_f_name, member_l_name,
member_ssn, member_sex, member_email, member_join_date,
committee_id, supporter_id)
values(2020170043,'abdelrahman','fayez',30200102469,'M',
'abdofayezz@gmail.com',TO_DATE('2019/11/13', 'yyyy/mm/dd'),
1,null)
;

insert into members(member_id, member_f_name, member_l_name,
member_ssn, member_sex, member_email, member_join_date,
committee_id, supporter_id)
values(2020170478,'omar','nesem',30200102188,'M',
'omarnesem@hotmail.com',TO_DATE('2021/11/5', 'yyyy/mm/dd'),
1,2020170043)
;

insert into members(member_id, member_f_name, member_l_name,
member_ssn, member_sex, member_email, member_join_date,
committee_id, supporter_id)
values(2020179356,'ehab','ali',30200102970,'M',
'ehabb_alii@gmail.com',TO_DATE('2019/11/2', 'yyyy/mm/dd'),
2,null)
;

insert into members(member_id, member_f_name, member_l_name,
member_ssn, member_sex, member_email, member_join_date,
committee_id, supporter_id)
values(2020170236,'ahmed','ali',30200102367,'M',
'ahmmedali@gmail.com',TO_DATE('2021/11/3', 'yyyy/mm/dd'),
2,2020179356)
;

insert into members(member_id, member_f_name, member_l_name,
member_ssn, member_sex, member_email, member_join_date,
committee_id, supporter_id)
values(2020170836,'ziad','atef',30200102732,'M',
'ziadatef@gmail.com',TO_DATE('2019/11/9', 'yyyy/mm/dd'),
3,null)
;

insert into members(member_id, member_f_name, member_l_name,
member_ssn, member_sex, member_email, member_join_date,
committee_id, supporter_id)
values(2020174321,'omnia','khaled',30200102483,'F',
'omniiakaled@gmail.com',TO_DATE('2021/10/28', 'yyyy/mm/dd'),
3,2020170836)
;

insert into members(member_id, member_f_name, member_l_name,
member_ssn, member_sex, member_email, member_join_date,
committee_id, supporter_id)
values(2020176482,'sara','abdelaziz',30200107319,'F',
'sara_abdelaziz@gmail.com',TO_DATE('2019/11/28', 'yyyy/mm/dd'),
4,null)
;

insert into members(member_id, member_f_name, member_l_name,
member_ssn, member_sex, member_email, member_join_date,
committee_id, supporter_id)
values(2020173642,'nada','tarek',30200103164,'F',
'nadatareeek@gmail.com',TO_DATE('2021/12/01', 'yyyy/mm/dd'),
4,2020176482)
;

insert into members(member_id, member_f_name, member_l_name,
member_ssn, member_sex, member_email, member_join_date,
committee_id, supporter_id)
values(2020171436,'nermin','saber',30200102363,'F',
'nermeen246@gmail.com',TO_DATE('2019/11/4', 'yyyy/mm/dd'),
5,null)
;

insert into members(member_id, member_f_name, member_l_name,
member_ssn, member_sex, member_email, member_join_date,
committee_id, supporter_id)
values(2020170349,'youssef','fathy',30200102424,'M',
'youssef@gmail.com',TO_DATE('2021/12/1', 'yyyy/mm/dd'),
5,2020171436)
;

insert into members(member_id, member_f_name, member_l_name,
member_ssn, member_sex, member_email, member_join_date,
committee_id, supporter_id)
values(2020171478,'asem','fathy',30200102346,'M',
'asemfathy227@gmail.com',TO_DATE('2019/11/6', 'yyyy/mm/dd'),
6,null)
;

insert into members(member_id, member_f_name, member_l_name,
member_ssn, member_sex, member_email, member_join_date,
committee_id, supporter_id)
values(2020171728,'shahd','yasser',30200104746,'F',
'shahd_yasser@gmail.com',TO_DATE('2021/11/8', 'yyyy/mm/dd'),
6,2020171478)
;


select * from members;
















