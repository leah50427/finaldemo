DROP DATABASE IF EXISTS `dblast`;
CREATE DATABASE `dblast` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE `dblast`;
#商品
CREATE TABLE `product`(
`ID` TINYINT(4) ,
`Product` VARCHAR(50) ,
`product_card` VARCHAR(50)  ,
`product_front` VARCHAR(50) ,
`shadow` VARCHAR(50) ,
`Photo` VARCHAR(50) ,
`image_overday` VARCHAR(50) ,
`product_html` VARCHAR(50) ,
`view_detals` VARCHAR(50) ,
`stats_container` VARCHAR(50),
`Price` VARCHAR(50) ,
`Product_name` VARCHAR(50) ,
`remark_color` VARCHAR(50),
`remark_detail` VARCHAR(50) ,
`coler1` VARCHAR(50) ,
`coler2` VARCHAR(50) ,
`coler3` VARCHAR(50) ,
`coler4` VARCHAR(50) ,
`coler5` VARCHAR(50) ,
`smail_photo1` VARCHAR(50) ,
`smail_photo2` VARCHAR(50) ,
`smail_photo3` VARCHAR(50) ,
`smail_photo4` VARCHAR(50) ,
PRIMARY KEY(ID)
);
INSERT INTO `product` VALUES(1,"1","","","","assets/photo/notebook/note1.jpg","","notebook.jsp","","","$99","筆記本","COLOR","","c-blue","c-red","c-n3","","","assets/photo/notebook/note1.jpg","assets/photo/notebook/note2.jpg","assets/photo/notebook/note3.jpg","assets/photo/notebook/note4.jpg");
INSERT INTO `product` VALUES(2,"2","2","2","2","assets/photo/bag/b1.jpg","2","bag.jsp","2","2","$179","萬用收納袋","COLOR","","c-b1","c-b2","c-b3","","","assets/photo/bag/b1.jpg","assets/photo/bag/b2.jpg","assets/photo/bag/b3.jpg","assets/photo/bag/b4.jpg");
INSERT INTO `product` VALUES(3,"3","3","3","3","assets/photo/pen/pen1.jpg","3","pen.jsp","3","3","$150","日常配色筆","COLER","","c-p1","c-p2","c-p3","c-p4","c-p5","assets/photo/pen/pen1.jpg","assets/photo/pen/pen2.jpg","assets/photo/pen/pen3.jpg","assets/photo/pen/pen4.jpg");
INSERT INTO `product` VALUES(4,"4","4","4","4","assets/photo/penbag/penbag1.jpg","4","penbag.jsp","4","4","$159","筆袋","COLER","","c-pg1","c-pg2","c-pg3","","","assets/photo/penbag/penbag1.jpg","assets/photo/penbag/penbag2.jpg","assets/photo/penbag/penbag3.jpg","assets/photo/penbag/penbag4.jpg");
INSERT INTO `product` VALUES(5,"5","5","5","5","assets/photo/postcard/p4.jpg","5","postcard.jsp","5","5","$30","對你說明信片","備註","一組內含五張明信片","","","","","","assets/photo/postcard/p1.jpg","assets/photo/postcard/p2.jpg","assets/photo/postcard/p3.jpg","assets/photo/postcard/p4.jpg");
INSERT INTO `product` VALUES(6,"6","6","6","6","assets/photo/tape/tape4.jpg","6","tape.jsp","6","6","$130","動物紙膠帶","備註","五種樣式可以選擇購買","","","","","","assets/photo/tape/tape1.jpg","assets/photo/tape/tape2.jpg","assets/photo/tape/tape3.jpg","assets/photo/tape/tape4.jpg");
INSERT INTO `product` VALUES(7,"7","7","7","7","assets/photo/sticker/stic1.jpg","7","strkcker.jsp","7","7","$80","透明霧面貼紙","備註","三種樣式可以選擇購買","","","","","","assets/photo/sticker/stic1.jpg","assets/photo/sticker/stic2.jpg","assets/photo/sticker/stic3.jpg","assets/photo/sticker/stic4.jpg");
INSERT INTO `product` VALUES(8,"8","8","8","8","assets/photo/scrappaper/scrap1.jpg","8","scrappaper.jsp","8","8","$140","撕頁便條紙","備註","兩種樣式可以選擇購買","","","","","","assets/photo/scrappaper/scrap1.jpg","assets/photo/scrappaper/scrap2.jpg","assets/photo/scrappaper/scrap3.jpg","assets/photo/scrappaper/scrap4.jpg");
INSERT INTO `product` VALUES(9,"9","9","9","9","assets/photo/tape/tape4.jpg","9","tape.jsp","9","9","$130","動物紙膠帶","備註","五種樣式可以選擇購買","","","","","","","","","");
INSERT INTO `product` VALUES(10,"10","10","10","10","assets/photo/sticker/stic1.jpg","10","strkcker.jsp","10","10","$80","透明霧面貼紙","備註","三種樣式可以選擇購買","","","","","","","","","");
INSERT INTO `product` VALUES(11,"11","11","11","11","assets/photo/postcard/p4.jpg","11","postcard.jsp","11","11","$30","對你說明信片","備註","一組內含五張明信片","","","","","","","","","");

#留言板
CREATE TABLE `guestbook`(
`GBNO` TINYINT(4) AUTO_INCREMENT,
`GBName` VARCHAR(10),
`Product` VARCHAR(20),
`Rating` INT(5),
`Word` TEXT,
`Putdate` DATE,
PRIMARY KEY(GBNO)
);

INSERT INTO `guestbook` VALUES (1,'格子','萬用收納袋',4,'没有太花俏的圖案，簡單實用。。','2021-06-01');
INSERT INTO `guestbook` VALUES (2,'Benson Chu','筆記本',3,'很有個性的偈語筆記本，清薄好攜帶。','2021-06-02');
INSERT INTO `guestbook` VALUES (3,'妮妮','筆記本',5,'很有質感的本子，有想購買齊三本都買的慾望。','2021-06-03');
INSERT INTO `guestbook` VALUES (4,'Marry Zhou','筆記本',1,'覺得還不錯，就是輕薄點。','2021-06-04');
INSERT INTO `guestbook` VALUES (5,'Ariel L','萬用收納袋',4,'真的很萬用，可當錢包及化粧包。','2021-06-04');
INSERT INTO `guestbook` VALUES (6,'Rita Lee','萬用收納袋',5,'輕巧好用。','2021-06-06');
INSERT INTO `guestbook` VALUES (7,'佳儀','日常配色筆',5,'好寫不斷水','2021-06-19');
INSERT INTO `guestbook` VALUES (8,'詩詩','日常配色筆',4,'筆觸很流暢','2021-06-19');
INSERT INTO `guestbook` VALUES (9,'Lily F','筆袋',3,'很中性的筆袋','2021-06-19');
INSERT INTO `guestbook` VALUES (10,'Rita Lee','筆袋',4,'買了大的、小的一起買，喜歡一組的感覺。','2021-06-19');
INSERT INTO `guestbook` VALUES (11,'Patty','筆袋',4,'筆袋很好用，很少有可以簽名的筆袋。','2021-06-19');
INSERT INTO `guestbook` VALUES (12,'淑玲','對你說明信片',5,'喜歡它很簡單花樣的名信片。','2021-06-19');
INSERT INTO `guestbook` VALUES (13,'Cherry','對你說明信片',4,'喜歡名信片中的文字內容。','2021-06-19');
INSERT INTO `guestbook` VALUES (14,'Chiayu Yin','動物紙膠帶',5,'好可愛的紙膠帶，看了都捨不得用了。','2021-06-19');
INSERT INTO `guestbook` VALUES (15,'芊郁','動物紙膠帶',4,'貼在筆記本上，很療癒。','2021-06-19');
INSERT INTO `guestbook` VALUES (16,'Dora Chen','動物紙膠帶',5,'可以當修飾用，還可以在上面寫字、圖。','2021-06-19');
INSERT INTO `guestbook` VALUES (17,'Sappho','透明霧面貼紙',4,'圖案很可愛，可以貼在每天看得的地方。','2021-06-19');
INSERT INTO `guestbook` VALUES (18,'Sidney Lu','透明霧面貼紙',5,'超可愛，貼在各種封口上，超好用的貼紙。','2021-06-19');
INSERT INTO `guestbook` VALUES (19,'LuLu','透明霧面貼紙',3,'便宜又好用的小小東西。','2021-06-19');
INSERT INTO `guestbook` VALUES (20,'Joyce Lin','撕頁便條紙',5,'很好撕、黏性很好。','2021-06-19');
INSERT INTO `guestbook` VALUES (21,'John Chu','撕頁便條紙',4,'放在辦公室上使用很便利。','2021-06-19');
INSERT INTO `guestbook` VALUES (22,'Arthur Lin','撕頁便條紙',3,'隨寫隨貼。','2021-06-19');




DROP TABLE IF EXISTS members;
CREATE TABLE members(
Email VARCHAR(40) NOT NULL UNIQUE,
Password VARCHAR(20)  NOT NULL,
Name VARCHAR(20) NOT NULL,
Tel VARCHAR(10) NULL,
Address VARCHAR(10) NULL,
PRIMARY KEY(Email)
);
INSERT INTO members VALUE("10811210@cycu.org.tw","0000","何易承","","");