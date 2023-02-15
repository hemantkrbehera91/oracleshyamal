-rownum
-rowid
-sysdate
-systimestamp-
-user
-uid
currval
nextval
level




--sequence
sequence is a database object which creates sequential numbers with particular interval of time.
*it is a sharable object

create sequence s1;

select s1.nextval from dual;
select s1.currval from dual;

drop sequence s1;

create sequence s1
start with 5
increment by 2
maxvalue 10;   --no cycle

select s1.nextval from dual;
select s1.currval from dual;

create sequence s2
minvalue 3
start with 5
increment by 1
maxvalue 10
cycle
cache 6;


select s2.nextval from dual;
select s2.currval from dual;


create sequence s1;

create sequence s2
start with 5
increment by 2
maxvalue 10; 

create table emp(sno number,empid varchar2(20),name varchar2(20));

insert into emp(empid,name)values('emp'||s1.nextval,'hemant');
insert into emp(empid,name)values('emp'||s1.nextval,'amisha');
insert into emp(empid,name)values('emp'||s1.nextval,'abhijeet');


select * From emp;

update emp set sno=s2.nextval;


--level
level is a pseudo column which automatically assigns numbers to level in a tree structure,
levels always starts with 1.

top-bottom hierarachy   prior pk=fk
bottom-top hierarachy  prior fk=pk


select level,employee_id,first_name,manager_id from employees
start with employee_id=100
connect by prior employee_id=manager_id order by level asc;

select level,employee_id,first_name,manager_id from employees
start with employee_id=206
connect by employee_id=prior manager_id order by level asc;


print 1 to 10

select level from dual connect by level<=10;

select 5||'X'||LEVEL||'='||level*5 from dual connect by level<=10;

PALLAVI

P
A
L
L
A
V
I

P
PA
PAL
PALL
PALLA
PALLAV
PALLAVI

Q>PRINT ALL THE DATES OF THIS MONTH.


-----------------------------------------SQL---------------------------------------------
1>Basic SQL Select Statement
2>Restricting and Sorting Data
3>FETCH CLAUSE
4>Single Row Functions
5>Group Functions
6>SQL Loader
7>External Tables
8>Analytical Functions	
9>Set Operators
10>Sub Queries
11>Joins
12>Pseudo Columns
13>SQL PLUS Commands
14>DDL
15>DML
16>TCL
17>Constraints
18>Global Temporary Table
19>DCL
20>Views
21>Materialized Views
22>Synonyms
23>Sequence
24>Index
25>Hints
26>Table Partitioning
27>Virtual Column
28>Index Organized Table
29>regular expressions