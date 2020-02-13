create table branch
( 
 branchname varchar2(25),
 branchcity varchar2(25),
 assests number(8,2),
 primary key(branchname)
 );
 
 create table account
 (
  accno int,
  branchname varchar2(25),
  balance real,
  primary key(accno),
  foreign key (branchname) references branch (branchname)
  );
   create table customer
   (
    customername varchar(50),
    customerstreet varchar(25),
    city varchar(25),
    primary key( customername)
    );
    create table depositer
  (
   customername varchar2(50),
    accno number(8,2),
   primary key( customername,accno),
     foreign key (accno) references account (accno),
     foreign key (customername) references customer (customername)
   );
  
    
   
     create table borrower
    (.
      customername varchar2(50),
       loannumber number(10,2),
       primary key(customername, loannumber),
    foreign key (customername) references customer(customername)
    

    );
   create table loan
   (
    loannumber int,
    branchname varchar2(50),
    amount real,
    primary key(loannumber),
    foreign key (branchname) references branch (branchname)
    );

 
select * from branch;
select * from account;
select * from customer;
select * from depositer;
select * from borrower;
select * from loan;
    
insert into branch values('Vijaynagar','Bangalore',10000);
insert into branch values('Hanumanthnagar','Bangalore',20000);
insert into branch values('indiranagar','Bangalore',45000);
insert into branch values('Kormangala','Bangalore',55000);    
insert into branch values('chandra layout','Bangalore',65000);
     
     
insert into account values(1111,'Vijaynagar',65000);
UPDATE account
SET balance=10000
WHERE accno=1111;
     
insert into account values(2222,'Hanumanthnagar',20000);
insert into account values(3333,'indiranagar',45000);
insert into account values(4444,'Kormangala',55000);
insert into account values(5555,'chandra layout',65000);
         
insert into customer values('Shashank','M.G Road','Bangalore');
insert into customer values('John','Richmond road','Bangalore');
insert into customer values('Snow','C.V Raman road','Bangalore');
insert into customer values('Smith','Kuvempu road','Bangalore');
insert into customer values('Himmler','Mall road','Bangalore');
              
insert into depositer values('Shashank',1111);
insert into depositer values('John',2222);
insert into depositer values('Snow',3333);
insert into depositer values('Smith',4444);
insert into depositer values('Himmler',5555);
