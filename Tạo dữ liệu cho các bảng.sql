SET IDENTITY_INSERT roles off
GO
INSERT INTO roles ( role_name) values ('Customer');
INSERT INTO roles ( role_name) values ('Admin');
GO

go
SET IDENTITY_INSERT Users off
GO
INSERT INTO Users ( user_name, email, password, address, gender, phone, role_id) values (N'Mai Thị Trà My', 'mymie797@gmail.com', '12345', N'tỉnh Nam Đinh', 1, '0948766710',2);
INSERT INTO Users ( user_name, email, password, address, gender, phone, role_id) values (N'Vũ Quốc Việt', 'vietngo@gmail.com', '123456', N'tỉnh Hưng Yên', 0, '0948766711',1);
INSERT INTO Users ( user_name, email, password, address, gender, phone, role_id) values (N'Triệu Tiến Đức', 'ducxinh@gmail.com', '123457', N'Hà Nội', 0, '0948766712',1 );
INSERT INTO Users ( user_name, email, password, address, gender, phone, role_id) values (N'Nguyễn Hải Nam', 'namlanh@gmail.com', '1234568', N'tỉnh Hà Nội', 0, '0948766713',1);
INSERT INTO Users ( user_name, email, password, address, gender, phone, role_id) values (N'Mai Thùy Dương', 'duongchi@gmail.com', '1234579', N'tỉnh Hải Phòng', 1, '0948766714',1 );
INSERT INTO Users ( user_name, email, password, address, gender, phone, role_id) values (N'Trần Văn Phi', 'phingu@gmail.com', '012345', N'tỉnh Nam Định', 0, '0948766715',1 );
GO
 select * from Users;
 delete  from Users;

SET IDENTITY_INSERT Category off
GO
INSERT INTO Category(category_name) values (N'SẢN PHẨM ĐẶC TRƯNG');
INSERT INTO Category(category_name) values (N'BÁNH SINH NHẬT');
INSERT INTO Category(category_name) values (N'BÁNH TƯƠI');
INSERT INTO Category(category_name) values (N'BÁNH QUY');
INSERT INTO Category(category_name) values (N'BÁNH MÌ');
INSERT INTO Category(category_name) values (N'KEM');
INSERT INTO Category(category_name) values (N'BÁNH TRÁNG MIỆNG');
INSERT INTO Category(category_name) values (N'PHỤ KIỆN SINH NHẬT');
GO
 select * from Category;

 SET IDENTITY_INSERT Product off
GO
INSERT INTO Product (category_id, product_name, price, stock, img, description) values ();

GO