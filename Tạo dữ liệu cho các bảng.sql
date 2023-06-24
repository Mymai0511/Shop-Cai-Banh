
SET IDENTITY_INSERT Users off
GO
INSERT INTO Users ( user_name, email, password, address, gender, phone, isSell, isAdmin) values (N'maimy', 'mymie797@gmail.com', '12345', N'tỉnh Nam Đinh', 1, '0948766710',1, 1);
INSERT INTO Users ( user_name, email, password, address, gender, phone, isSell, isAdmin) values (N'quocviet', 'vietngo@gmail.com', '123456', N'tỉnh Hưng Yên', 0, '0948766711', 1, 0);
INSERT INTO Users ( user_name, email, password, address, gender, phone, isSell, isAdmin) values (N'tienduc', 'ducxinh@gmail.com', '123457', N'Hà Nội', 0, '0948766712', 0, 1 );
INSERT INTO Users ( user_name, email, password, address, gender, phone, isSell, isAdmin) values (N'hainam', 'namlanh@gmail.com', '1234568', N'tỉnh Hà Nội', 0, '0948766713', 0, 0);
INSERT INTO Users ( user_name, email, password, address, gender, phone, isSell, isAdmin) values (N'thuyduong', 'duongchi@gmail.com', '1234579', N'tỉnh Hải Phòng', 1, '0948766714',1 , 0);
INSERT INTO Users ( user_name, email, password, address, gender, phone, isSell, isAdmin) values (N'vanphi', 'phingu@gmail.com', '012345', N'tỉnh Nam Định', 0, '0948766715', 0, 0);
GO
 select * from Users;
 delete  from Users 
DELETE FROM Users WHERE USER_ID =8;

SET IDENTITY_INSERT  Category off
GO
INSERT INTO Category(category_id, category_name) values (1, 'CAKE');
INSERT INTO Category(category_id, category_name) values (2, 'COOKIES');
INSERT INTO Category(category_id,category_name) values (3, 'CAKE TRUFFLES');
INSERT INTO Category(category_id,category_name) values (4, 'PIES');
INSERT INTO Category(category_id,category_name) values (5, 'GLUTEN-FREE');
INSERT INTO Category(category_id,category_name) values (6, 'OTHER');

Delete from Category

GO
 select * from Category;



 SET IDENTITY_INSERT Product off
GO
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (1, 'BLUEBERRY MUFFIN CAKE', 65, 20,
N'Introducing our new Blueberry Muffin Cake! We took the beloved blueberry muffin and transformed it into a bold, bright, Spring sensation. First, we bake tart blueberries into a buttery vanilla cake, then we layer rounds of lush lemon pudding and creamy buttermilk frosting to pack a delicious punch. And finish the cake with speckled blueberry frosting and crunchy blueberry muffin crumbs.',
N'Wheat, Eggs, Milk, Soy'
,'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_0001_6.png?format=pjpg&v=1680117243&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (1, 'STRAWBERRY CORN CAKE', 65, 20, 
N'Meet our new seasonal sensation, the Strawberry Corn Cake. It’s got everything you love about summer in a fruity, butter-y, bright cake. Perfect for a picnic, trip to the beach, backyard BBQ, or whatever occasion your summer calls for. ',
N'Wheat, Eggs, Milk, Soy'
,'https://cdn.shopify.com/s/files/1/0034/7550/5225/files/StrawberryCornCake_051.jpg?format=pjpg&v=1687466582&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (1, N'BIRTHDAY CAKE', 62, 20,
'Our bestselling Birthday Cake, inspired by the boxed vanilla funfetti cake we loved as a kid. It has three tiers of heavenly rainbow-flecked vanilla birthday cake, layers of creamy frosting & crunchy crumbs, all topped with rainbow sprinkles.',
N'Wheat, Eggs, Milk, Soy'
,'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/06_Box-alt_BDAY_CA.jpg?format=pjpg&v=1680272004&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (1, N'RED VELVET CHEESECAKE CAKE', 65, 20,
N'This fan-favorite is back! Our rich Red Velvet Cheesecake Cake ups the ante on decadence with layers of double chocolate red velvet cake and frosting, cheesecake filling, and red velvet crumbs.  ',
N'Wheat, Eggs, Milk, Soy'
,'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_0111_16.png?format=pjpg&v=1680272233&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (1, N'CHOCOLATE BIRTHDAY CAKE', 62, 20,
N'The classic Birthday Cake, but make it chocolate. Decadent chocolate cake plus chocolate chips, layered with creamy Birthday frosting, crunchy Birthday crumbs, and rainbow sprinkles.',
N'Wheat, Eggs, Milk, Soy'
,'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_0111_16.png?format=pjpg&v=1680272233&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (1, N'BIRTHDAY CAKE', 62, 20,
N'You’ve never tried a birthday cake like this. Our bestselling Birthday Cake, inspired by the boxed vanilla funfetti cake we loved as a kid, has grown up and gone gourmet. It has three tiers of heavenly rainbow-flecked vanilla birthday cake, layers of creamy frosting & crunchy crumbs, all topped with rainbow sprinkles.',
N'Wheat, Eggs, Milk, Soy'
,'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/06_Box-alt_BDAY_CA.jpg?format=pjpg&v=1680272004&width=1080' );

GO

 SET IDENTITY_INSERT Product off
GO
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (1, 'ASSORTED COOKIE TIN ', 27, 20,
'Sometimes the correct answer is “one of each,” but we think "two of each" is right the rest of the time. You have got the right to refuse to choose, so we put together these cookie cornucopias covering all the bases: fruity, corny, chewy, crispy, fudgy, and salty-sweet. Flavors include: Compost, Cornflake Chocolate Chip Marshmallow, Confetti, Chocolate Confetti, Blueberry & Cream, and Corn. ',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/09212020_PDP-OVERHAUL5481.jpg?format=pjpg&v=1606756565&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (1, ' ', 65, 20,
' ',
'Wheat, Eggs, Milk, Soy',
'' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (1, ' ', 65, 20,
' ',
'Wheat, Eggs, Milk, Soy',
'' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (1, ' ', 65, 20,
' ',
'Wheat, Eggs, Milk, Soy',
'' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (1, ' ', 65, 20,
' ',
'Wheat, Eggs, Milk, Soy',
'' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (1, ' ', 65, 20,
' ',
'Wheat, Eggs, Milk, Soy',
'' );





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