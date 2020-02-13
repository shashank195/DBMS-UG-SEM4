create table branch( branchname varchar(10),branchcity varchar(20),assets real, primary key(branchname));
desc branch

create table bankaccount( accno int,branchname varchar(30),balance real, primary key(accno),foreign key(branchname) references branch(branchname));
desc bankaccount

create table bankcustomer( customername varchar(30),customerstreet varchar(30),customercity varchar(30), primary key(customername));
desc bankcustomer

create table depositer( customername varchar(30),accno int, primary key(customername,accno), foreign key(customername) references bankcustomer(customername),foreign key(accno) references bankaccount(accno));
desc depositer

create table loan(loannumber int,branchname varchar(30), amount real, primary key(loannumber), foreign key(branchname) references branch (branchname));
desc loan

alter table branch 
modify branchname varchar (40);


insert into branch values ('SBI_Chamrajpet' , 'Bangalore' , 50000) ;
insert into branch values ('SBI_ResidencyRoad' , 'Bangalore' , 10000) ;
insert into branch values ('SBI_ShivajiRoad' , 'Bombay' , 20000);
insert into branch values ('SBI_par1imentRoad' , 'Delhi' , 10000);
insert into branch values ('SBI_Jantarmantar' , 'Delhi' , 20000);

select * from branch;

insert into loan values(2, 'SBI_ResidencyRoad' ,2000) ;
insert into loan values(1, 'SBI_Chamrajpet' , 1000) ;
insert into loan values(3, 'SBI_ShivajiRoad' ,3000) ;
insert into loan values(4, 'SBI_par1imentRoad' ,4000) ;
insert into loan values(5, 'SBI_Jantarmantar' ,5000) ;

select * from loan;

insert into bankaccount values(1, 'SBI_Chamrajpet' ,2000) ;
insert into bankaccount values(2, 'SBI_ResidencyRoad' ,5000) ;
insert into bankaccount values(3, 'SBI_ShivajiRoad' ,6000) ;
insert into bankaccount values(4, 'SBI_par1imentRoad' ,9000) ;
insert into bankaccount values(5, 'SBI_Jantarmantar' ,8000) ;
insert into bankaccount values(6, 'SBI_ShivajiRoad' ,4000) ;

insert into bankaccount values(8, 'SBI_ResidencyRoad' ,4000) ;
insert into bankaccount values(9, 'SBI_par1imentRoad' ,3000) ;
insert into bankaccount values(10, 'SBI_ResidencyRoad' ,5000) ;
insert into bankaccount values(11, 'SBI_Jantarmantar' ,2000);
select * from bankaccount;
commit;
DELETE FROM bankaccount;

insert into bankcustomer values('Avinash', 'Bull_Temple_road' ,'Bangalore') ;
insert into bankcustomer values('Dinesh', 'Bannergatta_road' ,'Bangalore') ;
insert into bankcustomer values('Mohan', 'NationalCollege_road' ,'Bangalore') ;
insert into bankcustomer values('Nikil', 'Akbar_road' ,'Delhi') ;
insert into bankcustomer values('Ravi', 'Prithviraj_road' ,'Delhi') ;

commit;
select * from bankcustomer;

insert into depositer values('Avinash', 1) ;
insert into depositer values('Dinesh', 2) ;
insert into depositer values('Nikil', 4) ;
insert into depositer values('Ravi', 5) ;
insert into depositer values('Avinash', 8) ;
insert into depositer values('Nikil', 9) ;
insert into depositer values('Dinesh', 10) ;
insert into depositer values('Nikil', 11) ;

commit;
select * from depositer;  #SHASHANK
