
INSERT INTO Users ( user_name, password, address, phone, isSell, isAdmin) values (N'thanh', '12345', N'tỉnh Nam Đinh', '0948766711',1, 1);

select * from users
update users set 
user_name = ?,
password= ?,
address= ?,
phone= ?,
email= ?,
gender= ?,
isSell= ?,
isAdmin= ?
where user_id =?;

select * from orders;
select * from orderdetail;
delete from orderdetail where order_id = 1;
select top 1 order_id from [orders] order by order_id desc
select * from users;

SELECT product_id, order_date,  FROM Orders INNER JOIN bang2 
ON bang1.cot = bang2.cot;

	DELETE [ TOP (giatri_dau) [PERCENT] ] FROM bang [WHERE dieu_kien];
