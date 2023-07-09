
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
