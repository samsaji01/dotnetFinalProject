use sam
create table practicelike(id int,name varchar(50),designation varchar(50),salary int)
select *from practicelike
insert into practicelike values(1,'sam','manager',20000)
insert into practicelike values(2,'dennis','engineer',20000)
insert into practicelike values(3,'arjun','assistant manager',20000)
insert into practicelike values(4,'raj','general manager',20000)
insert into practicelike values(5,'daniel','accountant',20000)
select *from practicelike where name like '%m'
select name,count(*) from practicelike group by name having count(*)>1
select name from practicelike group by name having count(*)<2
with cte(name,a) as(select name,row_number() over(partition by name order by name) from practicelike  ) 
select * from cte 
select name,rank() over(partition by name order by name) from practicelike 