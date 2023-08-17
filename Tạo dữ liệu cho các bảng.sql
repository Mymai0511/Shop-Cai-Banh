
use lazycake;
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
INSERT INTO Category(category_id,category_name) values (4, 'TREAT BUNDLES');
INSERT INTO Category(category_id,category_name) values (5, 'PIES');
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
,'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_0111_24.png?format=pjpg&v=1680274079&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (1, N'CHOCOLATE BIRTHDAY CAKE', 62, 20,
N'The classic Birthday Cake, but make it chocolate. Decadent chocolate cake plus chocolate chips, layered with creamy Birthday frosting, crunchy Birthday crumbs, and rainbow sprinkles.',
N'Wheat, Eggs, Milk, Soy'
,'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_0111_16.png?format=pjpg&v=1680272233&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (1, N'GLUTEN-FREE BIRTHDAY CAKE', 62, 20,
N'Our classic Birthday Cake, inspired by the supermarket stuff we grew up with — now made gluten-free! Three tiers of rainbow-flecked, gluten-free vanilla Birthday cake layered with creamy Birthday frosting and crunchy gluten-free Birthday crumbs. Tastes like childhood',
N'Wheat, Eggs, Milk, Soy'
,'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/06_Box-alt_BDAY_CA.jpg?format=pjpg&v=1680272004&width=1080' );

GO

 SET IDENTITY_INSERT Product off
GO
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (2, 'ASSORTED COOKIE TIN', 27, 20,
'Sometimes the correct answer is “one of each,” but we think "two of each" is right the rest of the time. You have got the right to refuse to choose, so we put together these cookie cornucopias covering all the bases: fruity, corny, chewy, crispy, fudgy, and salty-sweet. Flavors include: Compost, Cornflake Chocolate Chip Marshmallow, Confetti, Chocolate Confetti, Blueberry & Cream, and Corn. ',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/09212020_PDP-OVERHAUL5481.jpg?format=pjpg&v=1606756565&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (2, 'THE COOKIE FAVES TIN', 46, 20,
'Look, we got all your favorites together! The Cookie Faves Tin is packed with 3 each of our best-selling cookies to split, share or gobble down all on your own — all packaged in a reusable, display-worthy windowed tin.',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/09212020_PDP-OVERHAUL5506-1050x1050.jpg?format=pjpg&v=1608226269&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (2, 'THE MILK BAR SAMPLER', 60, 20,
'Have a little bit of everything! This sampler pack of classic Milk Bar treats gives you a taste of the greats, from a 3-pack each of our dreamy rainbow-vanilla Birthday Day Cake Truffles and Chocolate Birthday Day Cake Truffles and one of each cookie to a single slice of ooey-gooey Milk Bar Pie — all packaged in a slick windowed tin.',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/09212020_PDP-OVERHAUL5521-1050x1050.jpg?format=pjpg&v=1611259075&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (2, 'DOZEN ASSORTED COOKIE TIN', 46, 20,
'Sometimes the correct answer is “one of each,” but we think “two of each” is right the rest of the time. Available by popular request, the Dozen Assorted doubles down on flavor from fruity, corny, chewy, and crispy to fudgy and salty-sweet — all in a slick windowed tin for an extra-special treat.',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/09212020_PDP-OVERHAUL5463_d0fecc13-4579-4ce3-8c27-311c6244dd09.jpg?format=pjpg&v=1606757926&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (2, 'CORNFLAKE CHOCOLATE CHIP MARSHMALLOW COOKIE TIN', 27, 20,
'Our crunchy, chewy riff on the classic chocolate chip cookie, packed full of caramelized cornflakes and gooey marshmallows in a deep vanilla base. Tin contains 6 individually wrapped cookies. ',
'Wheat, Eggs, Milk',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/cornflakedozen.jpg?format=pjpg&v=1608310624&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (2, 'CONFETTI COOKIE TIN', 27, 20,
'All those familiar box-mix Birthday Cake flavors — dreamy vanilla, rich butter, rainbow sprinkles — combine in fluffy, chewy sugar cookie heaven. Tin contains 6 individually wrapped cookies. ',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/09212020_PDP-OVERHAUL5093.jpg?format=pjpg&v=1606759482&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (2, 'CHOCOLATE CONFETTI COOKIE TIN', 27, 20,
'It’s here! A cocoa-and-vanilla-packed revision of the classic Confetti Cookie, remixing chocolatey boxed cake mix flavors into a fun and fluffy cookie, studded with mini chocolate chips and rainbow sprinkles. Tin contains 6 individually wrapped cookies.',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/09212020_PDP-OVERHAUL5333.jpg?format=pjpg&v=1606758948&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (2, 'COMPOST COOKIE® TIN', 27, 20,
'The original sweet and salty kitchen sink cookie, with chocolate chips in a deep vanilla base, plus Milk Bar’s five recommended food groups: pretzels, potato chips, graham crackers, coffee, oats, and butterscotch.  Tin contains 6 individually wrapped cookies.',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/09212020_PDP-OVERHAUL5372.jpg?format=pjpg&v=1606759124&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (2, 'CORN COOKIE TIN', 27, 20,
'Packed with salted butter and a sprinkle of sugar, this corn-y cookie is a love letter to Tosi’s family farm, to her grandma’s famous cornbake , to Sunday morning cereal, and, of course, to the wonder of cornbread. Pro tip: use two as the ‘bread’ of a grilled cheese. Yes, really.',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/09212020_PDP-OVERHAUL5257.jpg?format=pjpg&v=1606759656&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (2, 'BLUEBERRY & CREAM COOKIE TIN', 27, 20,
'A muffin top disguised as a cookie: mini white chocolate chips and bright, chewy dried blueberry bits suspended in a luscious sugar cookie base. Ideal for breakfast consumption… or any-time-of-day consumption. Tin contains 6 individually wrapped cookies.',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/09212020_PDP-OVERHAUL5314.jpg?format=pjpg&v=1606758518&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (2, 'GLUTEN-FREE FRUITY MARSHMALLOW COOKIE TIN', 27, 20,
'A bright and sandy cousin to the original Cornflake Chocolate Chip Marshmallow Cookie, packed with marshmallows and the crunchy, fruity cereal of your childhood — plus, it’s gluten free!',
'Eggs, Milk',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/09212020_PDP-OVERHAUL5239_1cbc3465-f4ff-411a-bb20-b28d26874d06.jpg?format=pjpg&v=1606760002&width=1080' );

 SET IDENTITY_INSERT Product off
GO
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (3, 'BIRTHDAY TRUFFLE DOZEN BOX', 40, 20,
'We rolled all the childhood flavor of our signature cake into a single bite — no utensils needed. Made from Birthday Cake, these rainbow-flecked, vanilla-happy goodies are coated in a barely-there white chocolate shell and rolled in Birthday sand. Includes one gift box of 12 Birthday Truffles.',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_02921_13.png?format=pjpg&v=1680285463&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (3, 'STRAWBERRY CORN CAKE TRUFFLE DOZEN', 40, 20,
'Say hello to our newest limited-edition creation: Strawberry Corn Cake Truffles. The flavors of summer, now in a biteable, packable, craveable truffle. We took our summer produce inspired Strawberry Corn Cake and rolled it into tasty Cake Truffles— packed with pops of berry and dusted in strawberry corn crumbs. ',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/files/StrawberryCornCakeTruffles_011.jpg?format=pjpg&v=1687455829&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (3, 'CHOCOLATE BIRTHDAY TRUFFLE DOZEN BOX', 40, 20,
'Like eating the batter and the cake all at once. Made from Chocolate Birthday Cake, these one-bite wonders are loaded with rainbow sprinkles, then coated in a barely-there chocolate shell and a dusting of chocolate Birthday sand. ',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_02921_15.png?format=pjpg&v=1680285698&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (3, 'RED VELVET CHEESECAKE CAKE TRUFFLE DOZEN BOX', 40, 20,
'These decadent bite-size cuties are back! They’re everything you love about our Red Velvet Cheesecake Cake rolled into over-the-top Cake Truffles. Filled with chocolate cake, chocolate chips, and cream cheese, coated in a barely-there chocolate shell, and rolled in red velvet crumbs, they deliver big time on red velvet flavor.',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_0111_29.png?format=pjpg&v=1680274400&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (3, 'GLUTEN-FREE BIRTHDAY TRUFFLE DOZEN BOX', 40, 20,
'We rolled all the childhood flavor of our signature cake into a single bite — no utensils needed. No gluten needed, either. Made from Gluten-Free Birthday Cake, these rainbow-flecked, vanilla-happy, gluten-free goodies are coated in a barely-there white chocolate shell and rolled in Birthday sand. ',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_02921_13_90351d3d-af6b-4e75-bfc7-db2fb6cf2abd.png?format=pjpg&v=1680285811&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (3, 'ASSORTED TRUFFLE BOX', 56, 20,
'18 decadent, bite-sized truffles. In this sampler gift box of our cult classic Cake Truffles, Birthday, Chocolate Birthday, and Red Velvet Cheesecake come to play. With six truffles per flavor, there is enough fun to go around.',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_0111_35.png?format=pjpg&v=1680275099&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (3, 'BIRTHDAY TRUFFLE SAMPLER', 56, 20,
'18 decadent, bite-sized truffles. In this sampler gift box of our cult classic Cake Truffles, Birthday & Chocolate Birthday come to play. With nine truffles per flavor, there is enough fun to go around.',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/SOYBundle_06_1.jpg?format=pjpg&v=1654008062&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (3, 'SPRING ASSORTED TRUFFLE BOX', 56, 20,
'Sun’s out, and so are the treats. From celebrating the first BBQ of the season to getting the crew together for a park day, the Spring Variety Truffle Box has 18 bite-size Cake Truffles perfect for passing around.',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_0111_13.png?format=pjpg&v=1680212890&width=1080' );
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (3, 'BLUEBERRY MUFFIN CAKE TRUFFLE DOZEN BOX', 40, 20,
'Say hello to our new, limited-edition Blueberry Muffin Cake Truffles! We took all the lemony, buttery greatness of a blueberry muffin and rolled it into these bold, bite-sized truffles. First, we take bright and fudgy blueberry muffin cake and roll it in blueberry muffin sand, and then top ‘em off with crunchy sprinkles. ',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_0001_11.png?format=pjpg&v=1680118496&width=1080' );

 SET IDENTITY_INSERT Product off
GO
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (4, 'THE BIRTHDAY CLASSIC', 94, 20,
'A birthday-flavored no-brainer fit for any kind of celebration. 1 Birthday Cake + 1 dozen Birthday Truffles = 1 very yummy party.',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_0111_39.png?format=pjpg&v=1680276006&width=1080');
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (4, 'RED VELVET DUO', 97, 20,
'Go over the top with our rich Red Velvet Cheesecake Cake and Truffles. This is a no-brainer for any kind of celebration.',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_0111_31.png?format=pjpg&v=1680274631&width=1080');
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (4, 'THE LITTLE SOMETHINGS', 95, 20,
'The Little Somethings contains 1 Assorted Cookie Tin for a total of 6 cookies (1 Corn Cookies, 1 Compost Cookies®, 1 Blueberry & Cream Cookies™, 1 Confetti Cookies, 1 Chocolate Confetti Cookies, 1 Cornflake Chocolate Chip Marshmallow Cookies), 1 B’Day Cake Truffle Dozen Box, and 1 Chocolate B’Day Cake Truffle Dozen Box for a total of 24 truffles.',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_02921_19.png?format=pjpg&v=1680286274&width=1080');
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (4, 'THE CHOCOLATEY CLASSIC', 94, 20,
'Wondering how to celebrate that person whose two great passions in life are chocolate and cake? A decadent Chocolate Birthday Cake and a dozen fudgy Chocolate Birthday Truffles should do the trick.',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_0111_40.png?format=pjpg&v=1680276160&width=1080');
INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (4, 'DESSERT YOUR WAY', 94, 20,
'Can’t decide between vanilla or chocolate? This dreamy duo is the best of both worlds. Our classic Birthday Cake paired with decadent Red Velvet Cheesecake Truffles is the perfect pair for when you just can’t pick.',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_0111_32.png?format=pjpg&v=1680274792&width=1080');

INSERT INTO Product (category_id, product_name, price, stock, title,description, img) 
values (5, 'PIE', 53, 20,
'Our signature, gooey Milk Bar Pie has a sticky, buttery, salty-sweet filling in a hearty oat-cookie crust. *This* is the pie that put Milk Bar on the map. Get it delivered fresh, anywhere in the USA. We dare you not to have a second slice.',
'Wheat, Eggs, Milk, Soy',
'https://cdn.shopify.com/s/files/1/0034/7550/5225/products/BMBackgroundRemoval_0111_22.png?format=pjpg&v=1680272861&width=1080');


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