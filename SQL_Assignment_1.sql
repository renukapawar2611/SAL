Create database edyoda;

use edyoda;

Create Table sales_People(Snum int,
                         Sname varchar(255),
                         City varchar(255),
					     Comm float);                         
                        
Create Table Customers(Cnum int,
					  Cname varchar(255),
                      City varchar(255) not null,
                      Snum int);                      
                      
Create Table order_Table(Onum int,
                         Amt float,
                         Odate varchar(255),
                         Cnum int,
                         Snum int);                        
                         
Insert Into Sales_people values(1001,'Peel','London',0.12),
								(1002,'Serres','Sanjose',0.13),
                                (1004,'Motika','London',0.11),
                                (1007,'Rifkin','Barcelona',0.15),
                                (1003,'Axelrod','Newyork',0.10);
                                
Insert Into Customers values(2001,'Hoffman','London',1001),
							(2002,'Giovanni','Rome',1003),
                            (2003,'Liu','Sanjose',1002),
                            (2004,'Grass','Berlin',1002),
                            (2006,'Clemen','London',1001),
                            (2008,'Cisneras','Sanjose',1007),
                            (2007,'Pereira','Rome',1004);
                            
Insert Into Order_Table values(3001,18.69,'3-10-1990',2008,1007),
                              (3003,767.19,'3-10-1990',2001,1001),
                              (3002,1900.10,'3-10-1990',2007,1004),
                              (3005,5160.45,'3-10-1990',2003,1002),
                              (3006,1098.16,'3-10-1990',2008,1007),
                              (3009,1713.23,'4-10-1990',2002,1003),
                              (3007,75.45,'4-10-1990',2004,1002),
                              (3008,4273.00,'5-10-1990',2006,1001),
                              (3010,1309.95,'6-10-1990',2004,1002),
                              (3011,9891.88,'6-10-1990',2006,1001);
                              
select*from Sales_People;
select*from Customers;
select*from Order_Table;     

#Count the number of Salesperson whose name begin with ‘a’/’A’.
select count(Sname) from Sales_People where Sname like 'A%';

#Display all the Salesperson whose all orders worth is more than Rs. 2000.
select Snum from Order_Table group by Snum having sum(Amt)>2000;
 
#Count the number of Salesperson belonging to Newyork.
select count(Sname) from Sales_people where city = 'Newyork';

#Display the number of Salespeople belonging to London and belonging to Paris
select Sname from Sales_People where city in('London','Paris');

#Display the number of orders taken by each Salesperson and their date of orders.
select Snum,Odate,count(Onum)from Order_Table group by Snum,Odate having count(Onum);

                            
                            
                            
                            
                            
                            
                            
                            
                            