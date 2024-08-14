create database project;
use project;
CREATE TABLE Agent (
  agent_id INT PRIMARY KEY,
  name VARCHAR(50),
  phone VARCHAR(15),
  email VARCHAR(50),
  address VARCHAR(100)
);
describe Agent;
CREATE TABLE Property (
  property_id INT PRIMARY KEY,
  property_type VARCHAR(20),
  address VARCHAR(100),
  selling_price DECIMAL(10,2),
  rent_in_price DECIMAL(10,2),
  date_of_construction date,
  size_in_sqft int,
  bedrooms int
);
select * from property;
describe property;
create table Buyers(
 buyers_id int,
 buyers_name varchar(30),
 agent_id int,
 property_id int,
 buying_price int,
 buying_date date,
 buying_type varchar(10)
);
drop table Buyers;
describe buyers;
drop table Sellers;
create table Sellers(
seller_id int,
seller_name varchar(30),
agent_id int,
property_id int,
selling_date date,
selling_price int
);
create table Transaction
(
 transaction_id int,
 amount int,
 transaction_date date,
 property_id int,
 property_availability varchar(30),
 primary key(transaction_id)
);
drop table Agent_Property;
CREATE TABLE Agent_Property (
  agent_id INT,
  property_id INT,
  relationship_type VARCHAR(20),
  buyers_id int,
  seller_id int,
  PRIMARY KEY (agent_id, property_id)
);
INSERT INTO Agent (agent_id, name, phone, email,address)
VALUES (14, 'John Doe', '1234567890', 'john.doe@gmail.com','1-9-354, Begumpet, Hyderabad, Telangana,500016'),
(22, 'Jane Smith', '9876543210', 'jane.smith@gmail.com','5-11-22, Kirlampudi Layout, Visakhapatnam, Andhra Pradesh,530017'),
(63,'Surya Yadav',6304832781,'surya.yadav1996@gmail.com','3-5-1002, Himayat Nagar, Hyderabad, Telangana,500029'),
(45,'Roshan Sharma',6302017475,'roshan.sharma1282@gmail.com','12-1-92, Sanath Nagar, Vijayawada, Andhra Pradesh	520018'),
(18,'Karthik Ramana',6309840719,'karthik.ramana26@gmail.com','4-4-1, Railway New Colony, Visakhapatnam, Andhra Pradesh,530016'),
(10,'Rahul Roy',9392653823,'rahul.roy10@gmail.com','6-3-1091, Somajiguda, Hyderabad, Telangana,500082'),
(42,'Sampath Kumar',7386826419,'sampath.kumar1262@yahoo.com','8-3-222, Srinivas Nagar, Secunderabad, Telangana,500094'),
(41,'Mohan Rao',9392448070,'mahanrao41@gmail.com','10-2-212, West Marredpally, Secunderabad, Telangana,500026'),
(69,'Hema Hegde',6303316065,'hegdehema1982@gmail.com','1-1-1, Raghava Colony, Guntur, Andhra Pradesh,522004'),
(31,'Nitin Verma',7992289701,'nithin.verma31@gmail.com','3-3-6, Lakdikapul, Hyderabad, Telangana,500004'),
(33,'Aman Prakash',9441498978,'prakash.aman33@gmail.com','16-7-1, Moghalrajpuram, Vijayawada, Andhra Pradesh,520010'),
(55,'Pavani Soni',9963908552,'pavani.soni@gmail.com','2-2-647/182/1, Bagh Amberpet, Hyderabad, Telangana,500013'),
(93,'Harshini Mehta',7780217789,'harshinimehta.193@gmail.com','4-1-1236, Troop Bazaar, Secunderabad, Telangana,500025'),
(11,'Guddu Pandit',7702678501,'guddupandit.11@gmail.com','14-12-2, Salipeta, Vizianagaram, Andhra Pradesh,535002'),
(67,'Munna Tripathi',9160444433,'munna.tripati@gmail.com','6-2-2, Lakdi Ka Pul, Hyderabad, Telangana,500004'),
(56,'Rakesh Kumar',8886565587,'rakesh.kumar@gmail.com','29-2-52, Suryaraopet, Vijayawada, Andhra Pradesh,520002'),
(99,'Mokshith Sai',9502519019,'mokshith.sai@gmail.com','3-3-7, Kachiguda Station Road, Hyderabad, Telangana,500027'),
(85,'Sunishith Balu',8688410472,'sunishith.balu85@gmail.com','50-2-24/25, Seethammadhara, Visakhapatnam, Andhra Pradesh,530013'),
(76,'Rajesh Prasad',9160567890,'rajesh.lucky7@gmail.com','8-1-284/OU/44, Jubilee Hills, Hyderabad, Telangana,500033'),
(19,'Seethesh Mittal',8878737639,'seethu.mittal14@gmail.com','9-1-108, Prashanti Nagar, Kurnool, Andhra Pradesh,518003');
select *from agent;
insert into Property(property_id,address,selling_price,rent_in_price,date_of_construction,property_type,size_in_sqft,bedrooms)
values(001,'Jubilee Hills,Hyderabad',50000000,100000, '2001-05-02','Bungalow house',3000,5),
(2,'Madhapur, Hyderabad',12000000,30000,'2010-07-04','Apartment',1500,3),
(003,'Kondapur, Hyderabad',7500000,20000, '2015-01-01','Duplex house',2000,4),
(004,'Banjara Hills, Hyderabad',85000000,150000, '2009-11-01','Individual house',6000,6),
(005,'Gachibowli, Hyderabad',16000000,40000, '2008-05-23','Apartment',1800,3),
(006,'Secunderabad, Telangana',	12500000,35000,'2012-12-01','Individual house',2500,4),
(007,'Hi-Tech City, Hyderabad',	18000000,50000,	'2007-03-13','Duplex house',3000,5),
(008,'Kukatpally, Hyderabad',9500000,25000,	'2005-04-30','Apartment',1200,2),
(009,'Manikonda, Hyderabad',7000000,18000,'1997-07-25','Individual house',1500,3),
(010,'Vijayawada, Andhra Pradesh',25000000,	60000,'2005-06-07','Bungalow house',2500,6),
(011,'Begumpet, Hyderabad',	15000000,40000,'2009-05-01','Apartment',1700,3),
(012,'Nallagandla, Hyderabad',8500000,22000,'1999-09-01','Individual house',1000,2),
(013,'Kavuri Hills, Hyderabad', 11000000,28000,	'2003-08-20','Duplex house',1800,3),
(014,'Hitech City, Hyderabad',19000000,55000,'2001-06-12','Apartment',2200,4),
(015,'Kakinada, Andhra Pradesh',9000000,25000,'2000-11-10','Bungalow house',1600,8);
select * from property;
drop table Buyers;
insert into Buyers(buyers_id,buyers_name,agent_id,property_id,buying_price,buying_date,buying_type)
values
(101,'Ravi Kumar',69,13, 15000000,'2005-01-10','owned'),
(102,'Sujatha Reddy',18,10, 60000,'2008-02-15','For Rent'),
(103,'Naveen Kumar',  31,12, 7500000,'2002-03-01','owned'),
(104,'Priya Sharma',  63,4,  10000000,'2012-03-05','owned'),
(105,'Suresh Reddy',  45,8,  25000,'2008-03-10','For Rent'),
(106,'Aishwarya Rai', 31,9,  18000,'2001-03-12','For Rent'),
(107,'Manoj Kumar',   33,5,  15000000,'2011-03-13','owned'),
(108,'Radha Reddy',  42,7,  50000,'2010-03-15','For Rent'),
(109,'Sanjay Gupta',69,3,  7000000,'2020-03-20','owned'),
(110,'Anjali Singh',55,2,  14000000,'2012-03-25','owned'),
(106,'Aishwarya Rai',69,1,100000,'2003-07-11','For Rent');
insert into Sellers(seller_id,seller_name,agent_id,property_id,selling_price,selling_date)
values(301,'Raju Narendra',   69,13,  11000000, '2004-02-01'),
(302,'lalita reddy',	18,10,  25000000, '2007-02-05'),
(303,'purna sudha',	31,12,   8500000,  '2001-02-08'),
(304,'venu gopal',	63,4,	   8500000,  '2011-02-10'),
(305,'mahesh babu',	45,8,    9500000,  '2007-02-15'),
(306,'narendra naidu',	31,9,	   7000000,  '2000-02-20'),
(307,'kalyan ram',	33,5,   16000000,	'2010-02-22'),
(308,'ramana rao',	42,7,   18000000,	'2009-02-25'),
(309,'sita rama raju',	69,3,    7500000,	'2018-02-28'),
(310,'rajesh kumar',	55,2,	  12000000, '2011-07-14'),
(311,'mahesh babu',	67,1,   50000000, '2003-02-15'),
(312,'lalita reddy',	76,6,   12500000,	'2014-02-05'),
(313,'kalyan ram',	93,11,  15000000, '2011-02-22'),
(314,'komuram bheem',	99,14,  19000000, '2003-02-20'),
(315,'scott dora',	45,15,   9000000, '2002-02-22');
select * from sellers;
insert into agent_property(agent_id,property_id,relationship_type,buyers_id,seller_id)
values(69,13,'property manager',101,301),
(18,10,'property manager',102,302),
(31,12,'property manager',103,303), 
(63,4,'property manager',104,304),	
(45,8,'property manager',105,305),
(31,9,'property manager',106,306),
(33,5,'property manager',107,307), 
(42,7,'property manager',108,308),
(69,3,'property manager',109,309),
(55,2,'property manager',110,310),	
(67,1,'buying agent',111,311),
(76,6,'buying agent',112,312),
(93,11,'buying agent',113,313), 
(99,14,'buying agent',114,314), 
(45,15,'buying agent',115,315);
INSERT INTO Transaction (transaction_id, amount, transaction_date, property_id, property_availability)
VALUES
(1000,0,null, 1, 'running on rent'),
(1001, 14000000, '2012-03-25', 2, 'sold'),
(1002, 7000000, '2020-03-20', 3, 'sold'),
(1003, 10000000, '2012-03-05', 4, 'sold'),
(1004, 15000000, '2011-03-13', 5, 'sold'),
(1005, 0, Null, 6, 'unsold'),
(1006, 50000, '2010-03-15', 7, 'running on rent'),
(1007, 25000, '2008-03-10', 8, 'running on rent'),
(1008, 18000, '2001-03-12', 9, 'running on rent'),
(1009, 60000, '2005-01-10', 10, 'running on rent'),
(1010, 0, Null, 11, 'unsold'),
(1011, 7500000, '2008-02-15', 12, 'sold'),
(1012, 15000000, '2005-01-10', 13, 'sold'),
(1013, 0, Null, 14, 'unsold'),
(1014, 0, Null, 15, 'unsold');
select * from transaction;
 select * from agent_property;
select * from Property;
select * from Buyers;

select * from Property where year(date_of_construction)>2005 and property_id in (select property_id from Transaction where property_availability='unsold'); 
select address from Property where selling_price<20000000 and selling_price>10000000 and address like '%Hyderabad';
select address from Property where bedrooms>=4 and rent_in_price<50000 and address like'%Hyderabad%';
select name from Agent where agent_id in (select agent_id from Buyers group by agent_id having sum(buying_price)>=all(select sum(buying_price) from Buyers group by agent_id));
(select * from Property where selling_price>=all(select selling_price from Property))union(select * from Property where rent_in_price>=all(select rent_in_price from Property));
SELECT 
  a.agent_id, 
  AVG(CASE WHEN YEAR(p.date_of_construction) = 2010 THEN p.selling_price END) AS avg_selling_price_2010, 
  AVG(DATEDIFF(b.buying_date, p.date_of_construction)) AS avg_time_on_market
FROM 
  Agent a 
  JOIN Buyers b ON a.agent_id = b.agent_id 
  JOIN Property p ON b.property_id = p.property_id 
GROUP BY 
  a.agent_id;
 select selling_date,Sellers.property_id,Sellers.selling_price,address from sellers,property where Sellers.property_id=Property.property_id;
                    
SELECT * FROM buyers;
