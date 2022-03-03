# Student-Activity-DBMS


EERD: 
          

 
Schema:





 
Description:
Firstly, our project implements an idea of a random student activity in a faculty where it is managed by 4 main committees, vice and a president, where every student can be a member, head and other different roles.
The club is supported financially by sponsors who aids the club to organize several events throughout the year.


•	First, we have our super class which is STUDENT where every member in a club is student of the faculty so everyone will have a unique ID, unique SSN, email, join date, sex, and time spent. All other subclasses are the roles that are available in the club where each one inherits disjointly all the parent’s attributes.

•	Then we have 4 subclasses child entities which everyone does a distinct role in the club from the member to the president of the club who manages everything.

i.	MEMBER entity is where it contains old and new members where old members teach new members about the certain focus of each committee that they are in. Every new member can be tutored by only one old member and every old member can teach many new ones and every member only enroll in one COMMITTEE only.

ii.	HEAD entity is where a head is responsible of a single committee for all the work implemented by this committee and is given out to each VICE. Where every head leads a distinct COMMITTEE, and every committee can be leaded by only one HEAD while every head can only lead one committee.
 
iii.	VICE entity is where it contains the vice presidents who are responsible to supervise the work done by each committee. Where every vice supervises 3 committees at max, but each committee can only be supervised by only one vice and each vice has only one PRESIDENT.

iv.	PRESIDENT entity is where it contains the manager of the club who is responsible of all the departments and who can have many VICE presidents.
•		COMMITTEE entity is where each committee have a different focus and every committee can organize the several events that are made throughout the year while also has its own name and its unique ID and number of members who enrolled in, also many EVENTS can be organized by a single COMMITTEE which worked most on the event (Main_org).

•	Event entity is the events that are made each year by the club, and it is where the club implements the work done along the season and each event has its own start/end date, type, and its unique ID also every event is fully supported financially by SPONSOR.

•	SPONSOR entity is where a sponsor contributes to help the club with financial aid to run the events and each sponsor has its own name, phone, type, address(composite) and its unique ID. Every SPONSOR can help by a budget many events and an EVENT can be supported by several SPONSORS.
 
NOTICES
1.	Time spent attribute is derived from join date.
2.	Sponsor can fully cover all the event expenses.
3.	Not all old members help new ones.
4.	Each vice president can supervise at most 3 committee’s.
