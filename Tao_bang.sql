
create table Orders(
	order_id int identity(1,1) primary key,
	user_id int,
	order_date DATETIME,
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

create table Roles
(
	role_id int identity(1,1) primary key,
	role_name nvarchar(50) not null
);

create table Users(
	user_id int identity(1,1) primary key,
	user_name nvarchar(50)    ,
	email nvarchar(100) NOT NULL,
	password nvarchar(20) NOT NULL,
	address nvarchar(100) ,
	gender BIT	  ,
	phone nchar(11),
	role_id int ,
	foreign key (role_id) references Roles(role_id)
);

create table Category
(
	category_id int identity(1,1) primary key,
	category_name nvarchar(100)
);

create table Product(
	product_id int identity(1,1) primary key,
	product_name nvarchar(100)    not null,
	price float NOT NULL,
	stock nvarchar(20) NOT NULL,
	category_id int NOT NULL,
	img	 nvarchar(200) NOT NULL,
	description nvarchar(10) NOT NULL,
	create_date DATETIME  NOT NULL,
	foreign key (category_id) references Category(category_id)
);
