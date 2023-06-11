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
INSERT INTO Product (category_id, product_name, price, img) 
values (7, 'CHOCOLATE MOUSSE CHEESECAKE', 55000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTrangMieng\1.jpg' );
INSERT INTO Product (category_id, product_name, price, img) 
values (7, 'PASSION MOUSSE CHEESECAKE', 55000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTrangMieng\2.jpg' );
INSERT INTO Product (category_id, product_name, price, img) 
values (7, 'RED VELVET MOUSSE CHEESECAKE', 55000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTrangMieng\3.jpg' );
INSERT INTO Product (category_id, product_name, price, img) 
values (7, 'TIRAMISU MOUSSE CHEESECAKE', 55000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTrangMieng\4.jpg' );
INSERT INTO Product (category_id, product_name, price, img) 
values (7, N'BÁNH KEM TÍ HON TRIO CHOCOLATE', 10000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTrangMieng\5.jpg' );
INSERT INTO Product (category_id, product_name, price, img) 
values (7, N'BÁNH KEM TÍ HON CHANH DÂY', 10000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTrangMieng\6.jpg' );
INSERT INTO Product (category_id, product_name, price, img) 
values (7, N'BÁNH KEM TÍ HON TRÀ XANH', 10000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTrangMieng\7.jpg' );
INSERT INTO Product (category_id, product_name, price, img) 
values (7, N'BÁNH KEM TÍ HON BLACK FOREST', 10000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTrangMieng\8.jpg' );
INSERT INTO Product (category_id, product_name, price, img) 
values (7, 'PASSION CHEESE', 40000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTrangMieng\9.jpg' );
INSERT INTO Product (category_id, product_name, price, img) 
values (7, N'BÁNH KEM NHỎ TIRAMISU', 40000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTrangMieng\10.jpg' );
INSERT INTO Product (category_id, product_name, price, img) 
values (7, N'BÁNH KEM BẮP NHỎ', 40000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTrangMieng\11.jpg' );
INSERT INTO Product (category_id, product_name, price, img) 
values (7, N'BÁNH MATCHA', 40000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTrangMieng\12.jpg' );
INSERT INTO Product (category_id, product_name, price, img) 
values (7, 'TRIO CHOCOLATE', 40000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTrangMieng\13.jpg' );
INSERT INTO Product (category_id, product_name, price, img) 
values (7, N'BÁNH KEM BƠ VỊ CHANH NHỎ', 40000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTrangMieng\14.jpg' );
INSERT INTO Product (category_id, product_name, price, img) 
values (7, N'BÁNH KEM MOUSSE DÂU NHỎ', 40000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTrangMieng\15.jpg' );
INSERT INTO Product (category_id, product_name, price, img) 
values (7, N'CASHEW CHOCOLATE', 40000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTrangMieng\16.jpg' );
GO

 SET IDENTITY_INSERT Product off
GO
INSERT INTO Product (category_id, product_name, price, img) values (6, N'KEM CHUỐI DỪA', 12000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\Kem\1.jpg' );
INSERT INTO Product (category_id, product_name, price, img) values (6, N'KEM CHOCOLATE', 12000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\Kem\2.jpg' );
INSERT INTO Product (category_id, product_name, price, img) values (6, N'KEM DÂU', 12000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\Kem\3.jpg' );
INSERT INTO Product (category_id, product_name, price, img) values (6, N'KEM CÀ PHÊ', 12000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\Kem\4.jpg' );
INSERT INTO Product (category_id, product_name, price, img) values (6, N'KEM VANI', 12000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\Kem\5.jpg' );
INSERT INTO Product (category_id, product_name, price, img) values (6, N'KEM TRÀ XANH', 12000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\Kem\6.jpg' );
INSERT INTO Product (category_id, product_name, price, img) values (6, N'KEM ĐẬU XANH', 12000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\Kem\7.jpg' );
INSERT INTO Product (category_id, product_name, price, img) values (6, N'KEM ĐẬU ĐỎ', 12000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\Kem\8.jpg' );
INSERT INTO Product (category_id, product_name, price, img) values (6, N'KEM CHUỐI', 12000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\Kem\9.jpg' );
GO
 SET IDENTITY_INSERT Product off
GO
INSERT INTO Product (category_id, product_name, price, img) values (3, N'CUA MẶN', 15000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTuoi\1.jpg' );
INSERT INTO Product (category_id, product_name, price, img) values (3, N'BÔNG LAN CHOCOLATE', 16000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTuoi\2.jpg' );
INSERT INTO Product (category_id, product_name, price, img) values (3, N'BÔNG LAN CAM HẠT CHIA', 16000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTuoi\3.jpg' );
INSERT INTO Product (category_id, product_name, price, img) values (3, N'SU KEM', 33000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTuoi\9.jpg' );
INSERT INTO Product (category_id, product_name, price, img) values (3, N'BÁNH MEXICO SỮA DỪA', 12000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTuoi\5.jpg' );
INSERT INTO Product (category_id, product_name, price, img) values (3, N'BÁNH BÔNG LAN CUỘN NHỎ', 20000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTuoi\6.jpg' );
INSERT INTO Product (category_id, product_name, price, img) values (3, N'BÁNH MỲ CHÀ BÔNG HEO CAY', 20000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTuoi\13.jpg' );
INSERT INTO Product (category_id, product_name, price, img) values (3, N'BÁNH MỲ CHÀ BÔNG GÀ', 20000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTuoi\14.jpg' );
INSERT INTO Product (category_id, product_name, price, img) values (3, N'SANDWICH CÁ NGỪ & BẮP NON', 20000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTuoi\15.jpg' );
INSERT INTO Product (category_id, product_name, price, img) values (3, N'SANDWICH DĂM BÔNG PHÔ MAI', 24000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTuoi\16.jpg' );
GO

 SET IDENTITY_INSERT Product off
GO
INSERT INTO Product (category_id, product_name, price, img) values (8, N'NÓN SINH NHẬT LỚN', 15000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\PhuKienSinhNhat\1.jpg' );
INSERT INTO Product (category_id, product_name, price, img) values (8, N'NÓN 12 CON GIÁP', 15000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\PhuKienSinhNhat\2.jpg' );
INSERT INTO Product (category_id, product_name, price, img) values (8, N'KÍNH SINH NHẬT', 20000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\PhuKienSinhNhat\9.jpg' );
INSERT INTO Product (category_id, product_name, price, img) values (8, N'BỘ ĐĨA BẠC & MUỖNG', 15000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\PhuKienSinhNhat\3.jpg' );
INSERT INTO Product (category_id, product_name, price, img) values (8, N'NẾN', 10000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\PhuKienSinhNhat\4.jpg' );
INSERT INTO Product (category_id, product_name, price, img) values (8, N'PHÁO BÔNG NHỎ', 15000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\PhuKienSinhNhat\6.jpg' );
INSERT INTO Product (category_id, product_name, price, img) values (8, N'PHÁO HOA ĐĂNG', 40000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\PhuKienSinhNhat\7.jpg' );
INSERT INTO Product (category_id, product_name, price, img) values (8, N'XỊT TUYẾT', 21000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\PhuKienSinhNhat\8.jpg' );
GO

 SET IDENTITY_INSERT Product off
GO
INSERT INTO Product (category_id, product_name, price, img) values (2, N'KEM CHUỐI DỪA', 12000,'D:\Assignment PRJ301\ShopCaiBanh\Shop-Cai-Banh\Web_ShopCaiBanh\web\image\Anh\BanhTrangMieng\1.jpg' );


GO

 select * from product;

DELETE from product;

 select * from Category;