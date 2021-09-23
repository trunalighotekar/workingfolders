create database Join_prac;
use join_prac;

create table s1(s_Id int(20),
s_name varchar(20),
s_phoneno varchar(20)
);

insert into s1 values(1,"abhi","2564"),
(2,"adam","15445"),(3,"alex","7546");

create table s2(s_Id int(20),
s_location varchar(20),
s_mark int(20)
);
insert into s2 values(4,"delhi",50),
(5,"mumbai",24),(6,"pune",75);
desc s1;
# create  cross join 

select s_mark, s_name,s_location from s1 cross join s2;

# inner join 
select * from s1 inner join s2 where s1.s_Id = s2.s_Id;

#Natural join (same name same datatype)
select * from s1 natural join s2;

#outer join (left outer)
select * from s1 left outer join s2 on s1.s_Id=s2.s_Id;

#outer join(right outer)
select * from s1 right outer join s2 on s1.s_Id=s2.s_Id;

#outer join(full outer)
select * from s1 full outer join s2 on s1.s_Id=s2.s_Id;












