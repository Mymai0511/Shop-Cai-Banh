drop table Orders
create table Orders(
	order_id int identity(1,1) primary key,
	user_id int,
	order_date DATE,
	total float,
	notes nvarchar(200)
);

create table OrderDetail(
	detail_id int identity(1,1) primary key,
	order_id int ,
	product_id int, 
	price float ,
	quantity int
);


create table Users(
	user_id int identity(1,1) primary key,
	user_name nvarchar(50) NOT NULL   ,
	email nvarchar(100) ,
	password nvarchar(20) NOT NULL,
	address nvarchar(100) ,
	gender BIT	  ,
	phone char(10),
	isAdmin BIT,
	isSell BIT
	
);

create table Category
(
	category_id int primary key NOT Null,
	category_name nvarchar(100) not null
);

create table Product(
	product_id int identity(1,1) primary key,
	product_name nvarchar(100)    not null,
	price float ,
	stock nvarchar(20) ,
	img	 nvarchar(200) NOT NULL,
	title nvarchar(500) ,
	description nvarchar(200)  ,
	category_id int NOT NULL,
	foreign key (category_id) references Category(category_id)
);

