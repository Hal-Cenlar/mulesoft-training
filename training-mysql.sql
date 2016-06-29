CREATE DATABASE IF NOT EXISTS training 
  DEFAULT CHARACTER SET latin1
  DEFAULT COLLATE utf8_general_ci;

USE training;

create table IF NOT EXISTS accounts (
  accountID int NOT NULL AUTO_INCREMENT,
  name varchar(120) NOT NULL,
  street varchar(120),
  city varchar(120),
  state varchar(120),
  postal varchar(120),
  country varchar(120),
  PRIMARY KEY (accountID)
); 

create table IF NOT EXISTS american (
  ID int NOT NULL AUTO_INCREMENT,
  code1 varchar(80) NOT NULL,
  code2 varchar(80),
  airlineName varchar(120),
  toAirport varchar(5),
  fromAirport varchar(5),
  takeOffDate date,
  price tinyint,
  planeType varchar(80),
  seatsAvailable tinyint, 
  totalSeats tinyint,
  PRIMARY KEY (ID)
);

create table IF NOT EXISTS banking_account (
	account_id int, 
	balance decimal(15,2), 
	customer_ref int,
	PRIMARY KEY (account_id)
);
	
create table IF NOT EXISTS banking_customer (
	customer_id int, 
	firstName varchar(120),
	lastName varchar(120),
	PRIMARY KEY (customer_id)
);
	
create table IF NOT EXISTS companies (
  accountID int NOT NULL AUTO_INCREMENT,
  name varchar(20) NOT NULL,
  industry varchar(20),
  contactFirstName varchar(20),
  contactLastName varchar(20),
  street varchar(30),
  city varchar(20),
  state varchar(20),
  postal varchar(20),
  country varchar(20),
	PRIMARY KEY (accountID)
);

create table IF NOT EXISTS flights (
	code1 varchar(80) NOT NULL, 
	code2 varchar(80),
	airlineName varchar(120),
	toAirport varchar(5),
	fromAirport varchar(5),
	takeOffDate date,
	price tinyint,
	planeType varchar(80),
	seatsAvailable varchar(80)
);

INSERT INTO accounts (name,street,city,country,state,postal)
VALUES 
('Webbers bagels','32423 Blue Rd','Avon','United States','Ohio','44011'),
('Dans Databases','329329 Blue St','San Francisco','United States','California','94116'),
('Marks Markers','39203 red st','San Francisco','United States','California','94116'),
('Bevs Bees','12312 Blue Rd','Cleveland','United States','Ohio','44147'),
('Heyno','143','Lake','United States','Oregon','56365'),
('Bens Books','2 avenue Gabriel','Paris','France','null','75008'),
('Carls Cars','1243312 Blue Rd','Avon','United States','Ohio','44011'),
('Robert Costa','200 Park','East Providence','United States','RI','02878'),
('Dans Databases','329329 Blue St','San Francisco','United States','California','94116'),
('Hugo Andrade','123 Loud St.','Providence','USA','RI','02914'),
('Farhad Elhassani','123 Slow St.','Providence','United States','RI','02914'),
('Steve','200 Narragansett Park Drive','East Providence','US','RI','02916'),
('Steve','Nara','Mansfield','US','MA','02916'),
('Markus Kolic','2653 Courtlyn Road','Dighton','United States','Massachusetts','02715'),
('Kris','Stone','Glocester','United States','RI','02814'),
('This Guy','66 six street','Providence','United States','RI','02908'),
('Brunetti','Wunderkind','Glocester','United States','RI','02814'),
('Farhad','100 PArk','Woonsocket','US','RI','02878'),
('Etessami','Wunderkind','Glocester','United States','RI','02814'),
('FlatBeer','123 flatbeer','flatbeer','usa','nh','03062'),
('elvys','rua hidra','BH','brazil','Minas Gerais','30360-300'),
('Gaetan Brosseau','4840 rue des Graminees','Saint-Hubert','Canada','Quebec','52162'),
('Mats Magnusson','Toftahjden 30','Vxj','Sweden','Sverige','35592'),
('Made','Mina','Utama','Indonesia','DPS','55165'),
('Joe','St','New York','US','New York','10010'),
('AEO','19 Hot Metal Street','Pittsburgh','USA','PA','15203'),
('American Eagle Outfitters','77 Hot Metal St','Pittsburgh','USA','PA','15203'),
('FooBar Industries','100 Main St','San Francisco','USA','CA','94107'),
('Carson Street Commons','2529 E Carson Street','Pittsburgh','USA','PA','15203'),
('Apartment','5A Wharton Ct','Pittsburgh','USA','PA','15203'),
('John Armless','Capetosa Street','San Bambino','US','California','94000'),
('Jim','555 Trussville','Trussville','USA','AL','35173'),
('Fridosbaldo','Piracitununga 1000','Los Perdidos','United States','California','94000'),
('Bob K Jones','123 Worf St','Hobbitland','Land of the Hobbits','NC','27520');

insert into american (code1, code2, airlineName, toAirport, fromAirport, takeOffDate, price, planeType, seatsAvailable, totalSeats) 
values 
('rree','0001','American Airlines','LAX','MUA','2016-01-20',541,'Boeing 787',0,200),
('rree','0123','American Airlines','CLE','MUA','2016-01-25',300,'Boeing 747',7,345),
('rree','0192','American Airlines','LAX','MUA','2016-01-20',300,'Boeing 777',0,300),
('rree','1000','American Airlines','CLE','MUA','2016-01-20',200,'Boeing 737',5,150),
('rree','1093','American Airlines','SFO','MUA','2016-02-11',142,'Boeing 737',1,150),
('rree','1112','American Airlines','CLE','MUA','2016-01-20',954,'Boeing 787',100,200),
('rree','1994','American Airlines','SFO','MUA','2016-01-01',676,'Boeing 777',0,300),
('rree','2000','American Airlines','SFO','MUA','2016-02-20',300,'Boeing 737',30,150),
('rree','3000','American Airlines','SFO','MUA','2016-02-01',900,'Boeing 737',0,150),
('rree','4511','American Airlines','LAX','MUA','2016-01-15',900,'Boeing 777',100,300),
('rree','4567','American Airlines','SFO','MUA','2016-01-20',456,'Boeing 737',100,150);


INSERT INTO banking_account (account_id,balance,customer_ref) 
VALUES 
(587,40000.00,2),
(588,50000.00,3),
(589,60000.00,4),
(602,10000.00,30),
(601,9999.99,26),
(600,9999.99,3),
(598,200.99,22),
(599,10000.99,4),
(603,1111.00,30),
(604,1000.00,40),
(605,1000.00,40),
(606,9999.99,49),
(607,1000000.00,49),
(611,5000.29,2),
(609,9999.00,50),
(613,NULL,57),
(614,NULL,57),
(615,NULL,57),
(616,4.00,57),
(617,4.00,57),
(618,0.00,72),
(619,0.00,72),
(620,1000.00,72),
(621,11000.00,1),
(625,80000.00,87),
(624,89999.00,108),
(626,80000.00,8702232),
(627,9999.99,111);

insert into banking_customer 
values 
(1,'Sam','Lloyd'),
(2,'Frank','Newberry'),
(3,'Mule','Webber'),
(4,'Max','Muley');

insert into companies (name, industry, contactFirstName, contactLastName, street, city, state, postal, country)
values 
('MuleSoft','Software','Max','Mule','77 Geary Street','San Francisco','CA','94108','United States'),
('Agile Meals','Food','Molly','Mule','79 Madison Ave','New York','NY','10003','United States'), 
('Mammoth Jacks','Agriculture','Jack','Donkey','3460 Preston Ridge Road','Alpharetta','GA','30005','United States'),
('Equine Supplies','Agriculture','Maxim','Horse','130 Fenchurch Street','London','','EC3M 5DJ','United Kingdom'), 
('Hybrid Solutions','Software','Maximilian','Maultier','Landsberger Strasse 302','Munich','','80687','Germany'),
('Intelligent Analysis','Software','Maximiliano','Mula','Av. Corrientes 316 Entre Piso','Buenos Aires','','C1043AAQ','Argentina'),
('Endurance Apparel','Retail','Daan','Muldyr','Barbara Strozzilaan 101','Amsterdam','','1083 HN','Netherlands'),
('Tough Trailers','Agriculture','Emma','Roan','56 Berry Street','North Sydney','','2060','Australia'),
('Strong Flavors','Food','Yi Ling','Keldai','435 Orchard Road','Singapore','','238877','Singapore'),
('Burden Lifter','Software','Chen','Palomino','20 Pedder Street','Central Hong Kong','','','Hong Kong'),
('MuleSoft','Software','Max','Mule','77 Geary Street','San Francisco','CA','94108','United States'),
('MuleSoft','Software','Maxine','Mule','77 Geary Street','San Francisco','CA','94108','United States');

insert into flights (code1, code2, airlineName,toAirport,fromAirport,takeOffDate,price, planeType, seatsAvailable) 
values 
('rree','0001','American Airlines','LAX','MUA','2015-01-20',541,'Boeing 787','none'),
('rree','0123','American Airlines','CLE','MUA','2015-01-25',300,'Boeing 747','7'),
('rree','0192','American Airlines','LAX','MUA','2015-01-20',300,'Boeing 777','none'),
('rree','1000','American Airlines','CLE','MUA','2015-01-20',200,'Boeing 737','5'),
('rree','1093','American Airlines','SFO','MUA','2015-02-11',142,'Boeing 737','1'),
('rree','1112','American Airlines','CLE','MUA','2015-01-20',954,'Boeing 787','100'),
('rree','1994','American Airlines','SFO','MUA','2015-01-01',676,'Boeing 777','none'),
('rree','2000','American Airlines','SFO','MUA','2015-02-20',300,'Boeing 737','30'),
('rree','3000','American Airlines','SFO','MUA','2015-02-01',900,'Boeing 737','none'),
('rree','4511','American Airlines','LAX','MUA','2015-01-15',900,'Boeing 777','100'),
('rree','4567','American Airlines','SFO','MUA','2015-01-20',456,'Boeing 737','100');

-- GRANTS (add grants to any other host/IP adddress if required)
grant all on training.* to 'mule'@'mudb.mulesoft-training.com' identified by 'mule';
	
