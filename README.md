# Student-Activity-DBMS


## EERD 
          
![alt text](https://github.com/kareemgamal1/Student-Activity-DBMS/blob/main/EERD.png)
 
## Schema:

![alt text](https://github.com/kareemgamal1/Student-Activity-DBMS/blob/main/Schema.png)

## Description:
Our project implements an idea of a random student activity in a faculty where it consists of 4 main committees, , first of all a student can be a member, head, vice-president and president.
The club is supported financially by sponsors who aid the club to organize several events throughout the year.


•	First, we have our super class which is STUDENT where every member in a club is student of the faculty so everyone will have a unique ID, unique SSN, email, join date, sex, and time spent. All other subclasses are the roles that are available in the club where each one inherits disjointly all the parent’s attributes.

•	Then we have 4 subclasses child entities which everyone does a distinct role in the club from the member to the president of the club who manages everything.
  
i.	MEMBER entity includes both old and new members where old members teach new members about the focus of each committee that they are in. Every new member can be tutored by only one old MEMBER and every old member can teach many new ones, and every MEMBER only enroll in one COMMITTEE only.

ii.	HEAD entity is where a head is responsible of a single committee for all the work done by this committee, every HEAD leads a distinct COMMITTEE.
 
iii.	VICE entity is the vice presidents who are responsible to supervise the work done by each committee, where every VICE supervises 3 COMMITTEEs at max.

iv.	PRESIDENT is the leader of the club who is responsible of all the departments and who can have many VICE presidents.
## Other entities
•COMMITTEE entity contains every committee that can organize several events made throughout the year while also having its own attribute, many events can be organized by a single committee which did the most work for the specific event(Main_org).

•Event entity is the events that are made each year by the club, and it is where the club implements the work done along the season and each event has its own start/end date, type, and its unique ID also every event is fully supported financially by SPONSOR.

•SPONSOR entity is where a sponsor contributes to help the club with financial aid to run the events and each sponsor has its own name, phone, type, address(composite) and its unique ID. Every SPONSOR can help by a budget many events and an EVENT can be supported by several SPONSORS.
 
## NOTICES
1.	Time spent attribute is derived from join date.
2.	Sponsor can fully cover all the event expenses.
3.	Not all old members help new ones.
4.	Each vice president can supervise at most 3 committee’s.
