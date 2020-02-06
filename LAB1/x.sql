create user SHASHANK identified by SHASHANK;
grant dba to SHASHANK;

create table person (driver_id varchar(10),
name varchar(20),
address varchar(30),
primary key(driver_id));

desc person

create table car(reg_num varchar(10),model varchar(10),year int,primary key(reg_num));

desc car

create table accident(report_num int,accident_date date,location varchar(20),primary key(report_num));

desc accident

create table owns(driver_id varchar(10),reg_num varchar(10),
primary key(driver_id,reg_num),
foreign key(driver_id) references person(driver_id),
foreign key(reg_num) references car(reg_num));

create table participated(driver_id varchar(10), reg_num varchar(10),
report_num int, damage_amount int,
primary key(driver_id,reg_num,report_num),
foreign key(driver_id) references person(driver_id),
foreign key(reg_num) references car(reg_num),
foreign key(report_num) references accident(report_num));

desc participated

insert into person values('&driver_id','&name','&address'); 

commit;

select * from person;

insert into car values('&reg_num','&model', &year);

commit;

select * from car;

insert into accident values(&report_num,'&accident_date','&location');

commit;

select * from accident;

insert into owns values ('&driver_id','&reg_num');

commit;

select * from owns;

insert into participated values ('&driver_id','&reg_num',&report_num,
&damage_amount);

commit;

select * from participated;

update participated set damage_amount=25000 where reg_num='KA053408' and
report_num=12;

commit;

select * from participated;

insert into accident values(16,'15-MAR-08','Domlur');

select * from accident;

select count(distinct driver_id) CNT from participated a, accident b where
a.report_num=b.report_num and b.accident_date like '%08';

select count(report_num) CNT from car c,participated p where c.reg_num=p.reg_num and
model='Lancer';

select damage_amount from participated(
order by damage_amount ASC[DESC],
);

SELECT AVG(damage_amount)
FROM participated
;

delete from participated(
cross join (SELECT avg(damage_amount) as avg from participated)  t
where damage_amount < avg;

select name from participated,
where (DAMAGE_AMOUNT< avg);

select damage_amount from participated(
where damage_amount=max;
