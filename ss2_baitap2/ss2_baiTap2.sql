create database ss2_baitap2;
use ss2_baitap2;
create table Customer(
cID int primary key,
cName varchar(50),
cAge tinyint
);
create table `Order`(
oID int primary key,
cID int,
foreign key (cID) references Customer(cID),
oDate datetime,
oTotalPrice int
);
create table Product(
pID int primary key,
pName varchar(25),
pPrice int
);
create table OrderDetail(
oID int,
foreign key (oID)references `Order`(oID),
pID int,
foreign key (pID) references Product(pID),
opQTY int
);