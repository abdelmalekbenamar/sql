
create database location;
use location;

create table clients(
id int primary key auto_increment,
name varchar(50),
cin varchar(12)
);

create table cars(
id int primary key auto_increment,
name varchar(50),
rented bool,
image varchar(500)
);

create table contracts(
id int primary key auto_increment,
dateBegin date,
dateEnd date,
clientId int,
carId int,
foreign key(clientId) references clients(id) on delete cascade on update cascade,
foreign key(carId) references cars(id) on delete cascade on update cascade
);

insert into clients (name, cin) values ("abdelmalek", "M125476");
insert into clients (name, cin) values ("Naaim", "M12850");
insert into clients (name, cin) values ("Ahmed", "S102358");

insert into cars (name, rented, image) values ("renault", false, "https://ligierautomotive.com/wp-content/uploads/2017/12/concept-car.jpg");
insert into cars (name, rented, image) values ("chevrolet", false, "https://imageio.forbes.com/specials-images/imageserve/5d35eacaf1176b0008974b54/0x0.jpg");
insert into cars (name, rented, image) values ("toyota", false, "https://www.kbb.com/wp-content/uploads/2022/10/2023-toyota-rav4-prime-frt-3qtr.jpg");
insert into cars (name, rented, image) values ("toyota taisor", false, "https://www.financialexpress.com/auto/images/model-urban-cruiser-taisor-seo-image-1726213978949.jpg");

update clients set name = 'Abdelkhalek' where id = 1;
update clients set cin = 'J564135' where id = 2;

delete from clients where name = 'Naaim';
select * from contracts;
select * from clients;

