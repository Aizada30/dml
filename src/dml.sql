create table students
(
    id        serial primary key,
    firstName varchar,
    lastName  varchar,
    gender    varchar,
    email    varchar ,
    course    date,
    paument   numeric,
    duration  int
);

drop table students;

insert into students (firstName, lastName, gender, email, course, paument, duration)
values ('aizada', 'abdyrazakova', 'female','aizada@gmail.com','2002-2-23',15222.00,9);

insert into students (firstName, lastName, gender, email, course, paument, duration)
values ('Bekmamat', 'Azamat u', 'male','','2002-2-3',150020,9);

insert into students (firstName, lastName, gender, email, course, paument, duration)
values ('Akylai','Musaeva','female','akylai@gmail.com','2002-2-2',14000.00,9),
       ('Manas','Vaidullaev','male','manas@gamil.com','1999-2-3',12000.00,9),
       ('Daniel','Gafurov','male','daniel@gmail.com','2004-8-3',18000-6-5,9);

select course , count(*)from students group by course;
select max(paument)from students;

select min(paument)from students;
select avg(paument)from students;
select round(avg(paument))from students;
select sum(paument)from students;
select coalesce(email,'nonono')from students;
select now();
select now()-interval '1 day';
select now()+interval '1 year';
select now()::date;
select now()::time;
select extract(year from now());
select extract(dow from now());
select extract(century from now());


delete from students where firstName='aizada';
select * from students;

--не вышел апдате