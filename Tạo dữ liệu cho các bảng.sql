SET IDENTITY_INSERT roles off
GO
INSERT INTO roles ( role_name) values ('Customer');
INSERT INTO roles ( role_name) values ('Admin');
GO

go
SET IDENTITY_INSERT Users off
GO
INSERT INTO Users ( user_name, email, password, address, gender, phone, role_id) values ('mai my', 'mymie797@gmail.com', '12345', N'tỉnh Nam Đinh', 1, '0948766710',2);
INSERT INTO Users ( user_name, email, password, address, gender, phone, role_id) values ('quoc viet', 'vietngo@gmail.com', '123456', N'tỉnh Hưng Yên', 0, '0948766711',1);
INSERT INTO Users ( user_name, email, password, address, gender, phone, role_id) values ('tien duc', 'ducxinh@gmail.com', '123457', N'Hà Nội', 0, '0948766712',1 );
INSERT INTO Users ( user_name, email, password, address, gender, phone, role_id) values (N'Nguyễn Hải Nam', 'namlanh@gmail.com', '1234568', N'tỉnh Hà Nội', 0, '0948766713',1);
INSERT INTO Users ( user_name, email, password, address, gender, phone, role_id) values (N'Mai Thùy Dương', 'duongchi@gmail.com', '1234579', N'tỉnh Hải Phòng', 1, '0948766714',1 );
INSERT INTO Users ( user_name, email, password, address, gender, phone, role_id) values (N'Trần Văn Phi', 'phingu@gmail.com', '012345', N'tỉnh Nam Định', 0, '0948766715',1 );
GO
 select * from Users;
 delete  from Users;

SET  Category off
GO
INSERT INTO Category(category_id, category_name) values (1, N'BÁNH KEM');
INSERT INTO Category(category_id, category_name) values (2, N'BÁNH TRUFLES');
INSERT INTO Category(category_id,category_name) values (3, N'BÁNH NƯỚNG');
INSERT INTO Category(category_id,category_name) values (4, N'BÁNH QUY');
INSERT INTO Category(category_id,category_name) values (5, N'COMBO');

GO
 select * from Category;



 SET IDENTITY_INSERT Product off
GO
INSERT INTO Product (category_id, product_name, price, title,description, img) 
values (1, N'BÁNH MUFFIN VỊ VIỆT QUẤT', 300.000,
N'Bánh Muffin Blueberry mới của chúng tôi là một sự kết hợp tươi sáng giữa việt quất và mùa xuân. Nó được nướng từ bánh vani bơ, kết hợp với bánh pudding chanh tươi và phủ kem việt quất lốm đốm. Đây là lựa chọn hoàn hảo cho mọi bữa ăn.',
N'Wheat, Eggs, Milk, Soy'
,'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_0001_6.png?format=pjpg&v=1680117243&width=1080' );
INSERT INTO Product (category_id, product_name, price, title,description, img) 
values (1, N'BÁNH RED VELVET CHEESECAKE', 300.000,
N'Người hâm mộ yêu thích này đã trở lại! Bánh Cheesecake Red Velvet đậm đà của chúng tôi nâng cao vị ngon với các lớp bánh nhung đỏ sô cô la kép và phủ sương, nhân bánh pho mát và vụn bánh nhung đỏ.',
N'Wheat, Eggs, Milk, Soy'
,'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_0111_24.png?format=pjpg&v=1680274079&width=1080' );
INSERT INTO Product (category_id, product_name, price, title,description, img) 
values (1, N'BÁNH BIRTHDAY', 300.000,
N'Bạn chưa bao giờ thử một chiếc bánh sinh nhật như thế này. Bánh sinh nhật bán chạy nhất của chúng tôi, lấy cảm hứng từ chiếc bánh funfetti vani đóng hộp mà chúng tôi yêu thích khi còn nhỏ, đã lớn lên và trở thành người sành ăn. Nó có ba tầng bánh sinh nhật vani lấp lánh cầu vồng tuyệt đẹp, các lớp phủ kem và vụn bánh giòn, tất cả đều được rắc cầu vồng lên trên.',
N'Wheat, Eggs, Milk, Soy'
,'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_0111_14.png?format=pjpg&v=1680272004&width=1080' );
INSERT INTO Product (category_id, product_name, price, title,description, img) 
values (1, N'BÁNH CHOCOLATE', 300.000,
N'Bánh sinh nhật cổ điển, nhưng làm bằng sô cô la. Bánh sô-cô-la đã hư cùng với sô-cô-la vụn, được xếp lớp bằng kem phủ kem Sinh nhật, vụn bánh sinh nhật giòn và rắc cầu vồng. ',
N'Wheat, Eggs, Milk, Soy'
,'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_0111_16.png?format=pjpg&v=1680272233&width=1080' );
GO

 SET IDENTITY_INSERT Product off
GO
INSERT INTO Product (category_id, product_name, price, title,description, img) 
values (2, N'HỘP BÁNH MUFFIN TRUFFLE VỊ VIỆT QUẤT', 150.000,
N'Chúng tôi đã lấy tất cả vị chanh, bơ tuyệt vời của một chiếc bánh nướng xốp việt quất và cuộn nó thành những viên nấm cục đậm đà, vừa miệng ăn này. Đầu tiên, chúng tôi lấy bánh muffin việt quất sáng và béo ngậy và lăn nó trong cát muffin việt quất, sau đó rắc rắc giòn lên trên. Họ rất thú vị vào buổi sáng, buổi trưa và buổi tối — đặc biệt là với một tách joe buổi sáng.  ',
N'Wheat, Eggs, Milk, Soy'
,'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_0001_7.png?format=pjpg&v=1680118473&width=1080' );
INSERT INTO Product (category_id, product_name, price, title,description, img) 
values (2, N'HỘP BÁNH TRUFLE CHOCOLATE', 150.000,
N'Hộp bánh TRUFLE CHOCOLATE được làm từ Bánh sinh nhật chocolate, những món ăn kỳ diệu chỉ cần cắn một lần này được phủ đầy cầu vồng, sau đó được phủ một lớp vỏ chocolate mỏng ',
N'Wheat, Eggs, Milk, Soy'
,'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_02921_14.png?format=pjpg&v=1680285698&width=1080' );
INSERT INTO Product (category_id, product_name, price, title,description, img) 
values (2, N'HỘP BÁNH TRUFFLE BRITHDAY', 150.000,
N'Chúng tôi cuộn tất cả hương vị thời thơ ấu của chiếc bánh đặc trưng của mình vào một miếng duy nhất . Được làm từ Bánh brithday, những món quà hạnh phúc có màu cầu vồng, vani này được phủ một lớp vỏ sô cô la trắng mỏng',
N'Wheat, Eggs, Milk, Soy'
,'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_02921_12.png?format=pjpg&v=1680285463&width=1080' );
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