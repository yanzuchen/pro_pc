#设置客户端连接服务器端的编码
SET NAMES UTF8;
#丢弃数据库如果存在
DROP DATABASE IF EXISTS ggtx;
#创建数据库，设置存储的编码
CREATE DATABASE ggtx CHARSET=UTF8;
#进入创建的数据库
USE ggtx;

#创建用户列表ggtx_user
CREATE TABLE ggtx_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(16) unique,
  upwd VARCHAR(16),
  uphone VARCHAR(20),
  uadd VARCHAR(20)
);
#插入数据
INSERT INTO ggtx_user VALUES(NULL,'crx','123456','18308799616','云南省大理市');

#创建首页轮播图列表ggtx_index_carousel
CREATE TABLE ggtx_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  href VARCHAR(20)
);
#插入数据
INSERT INTO ggtx_index_carousel VALUES(NULL,'/img/carousel/banner0.jpg','/');
INSERT INTO ggtx_index_carousel VALUES(NULL,'/img/carousel/banner1.jpg','/');
INSERT INTO ggtx_index_carousel VALUES(NULL,'/img/carousel/banner2.jpg','/');
INSERT INTO ggtx_index_carousel VALUES(NULL,'/img/carousel/banner3.jpg','/');

#创建首页商品分类列表ggtx_index_product_family
CREATE TABLE ggtx_index_product_family(
	fid INT PRIMARY KEY AUTO_INCREMENT,
	fname VARCHAR(20),
	img VARCHAR(128)
);
INSERT INTO ggtx_index_product_family VALUES(NULL,'粮油调味','/img/index_product_family/linkimg0.jpg');
INSERT INTO ggtx_index_product_family VALUES(NULL,'休闲食品','/img/index_product_family/linkimg1.jpg');
INSERT INTO ggtx_index_product_family VALUES(NULL,'南北干货','/img/index_product_family/linkimg2.jpg');
INSERT INTO ggtx_index_product_family VALUES(NULL,'粮油调味','/img/index_product_family/linkimg3.jpg');

#创建首页商品列表ggtx_index_product
CREATE TABLE ggtx_index_product(
  pid INT PRIMARY KEY AUTO_INCREMENT,
	family_id INT,
  title VARCHAR(64),
  pic VARCHAR(128),
  price DECIMAL(10,2),
  href varchar(128)
);
INSERT INTO ggtx_index_product VALUES(NULL,1,'剑蜀酸辣粉268g带料包2袋装','/img/index_product/1.jpg','19.9','1');
INSERT INTO ggtx_index_product VALUES(NULL,1,'四川特产香菇酱220g下饭酱 牛肉酱','/img/index_product/2.png','12.9','2');
INSERT INTO ggtx_index_product VALUES(NULL,1,'精珍 四川特产香菇酱220g2瓶装','/img/index_product/3.png','24.9','3');
INSERT INTO ggtx_index_product VALUES(NULL,1,'火锅油碟罐装 芝麻调和油火锅调味蘸料 70ml','/img/index_product/4.png','3.5','4');
INSERT INTO ggtx_index_product VALUES(NULL,1,'木姜子油135ML山胡椒油山苍子油酸汤鱼调料 1瓶 135ml','/img/index_product/5.png','9.9','5');
INSERT INTO ggtx_index_product VALUES(NULL,1,'重庆江津九叶鲜青花椒油藤椒油花椒油麻椒油 60ml','/img/index_product/6.jpg','14.9','6');
INSERT INTO ggtx_index_product VALUES(NULL,1,'江津新鲜保鲜花椒四川鲜藤椒青花椒300g两袋装','/img/index_product/7.png','29.9','7');
INSERT INTO ggtx_index_product VALUES(NULL,1,'剑蜀手工酸辣粉桶装246gx6桶装','/img/index_product/8.jpg','49.9','8');

INSERT INTO ggtx_index_product VALUES(NULL,2,'荣飞 琥珀核桃仁 90g罐装','/img/index_product/9.jpg','16.9','9');
INSERT INTO ggtx_index_product VALUES(NULL,2,'荣飞琥珀桃仁每日坚果礼盒','/img/index_product/10.jpg','49.9','10');
INSERT INTO ggtx_index_product VALUES(NULL,2,'剑蜀 火锅苕粉 土豆粉超值组合装 带火锅料 懒人火锅 1袋苕粉+1袋土豆粉','/img/index_product/11.jpg','19.9','11');
INSERT INTO ggtx_index_product VALUES(NULL,2,'饶大姐（raodajie） 花生酥 喜糖果 四川小吃150g/袋 1袋装','/img/index_product/12.png','9.9','12');
INSERT INTO ggtx_index_product VALUES(NULL,2,'农家手作米豆腐灰水馍馍 2根装','/img/index_product/13.png','12.9','13');
INSERT INTO ggtx_index_product VALUES(NULL,2,'荣飞琥珀桃仁30gx6袋','/img/index_product/14.jpg','29.9','14');
INSERT INTO ggtx_index_product VALUES(NULL,2,'荣飞琥珀桃仁65gx3袋','/img/index_product/15.jpg','32.8','15');
INSERT INTO ggtx_index_product VALUES(NULL,2,'蜀行侠 剑门关老豆干豆腐干160g/袋','/img/index_product/16.jpg','5.8','16');

INSERT INTO ggtx_index_product VALUES(NULL,3,'广元七绝 朝天核桃2.5kg礼盒','/img/index_product/17.jpg','90','17');
INSERT INTO ggtx_index_product VALUES(NULL,3,'青川山珍干货菌菇大礼包 家庭装325g','/img/index_product/18.jpg','99','18');
INSERT INTO ggtx_index_product VALUES(NULL,3,'广供天下 青川山珍干货菌菇大礼包 超值装','/img/index_product/19.jpg','128','19');
INSERT INTO ggtx_index_product VALUES(NULL,3,'干货青川竹荪不开伞广元七绝土特产50g盒装无硫熏朵型完整爽脆','/img/index_product/20.jpg','49','20');
INSERT INTO ggtx_index_product VALUES(NULL,3,'广元七绝青川山珍黑木耳长裙竹荪黄花天麻片核桃花香菇野生青杠菌','/img/index_product/21.jpg','198','21');
INSERT INTO ggtx_index_product VALUES(NULL,3,'干货青川椴木黑木耳200g盒装广元七绝土特产农家自产秋木耳脆嫩','/img/index_product/22.jpg','39.9','22');
INSERT INTO ggtx_index_product VALUES(NULL,3,'广元七绝猴头菇200g盒装土特产干货山珍精品煲汤烧肉各类人群食用','/img/index_product/23.jpg','46.9','23');
INSERT INTO ggtx_index_product VALUES(NULL,3,'青川野生天麻四川特产滋补营养品无硫50g一级深山小天麻冬麻','/img/index_product/24.jpg','19.9','24');

INSERT INTO ggtx_index_product VALUES(NULL,4,'四川农家自种洋葱2.5kg','/img/index_product/25.png','19.9','25');
INSERT INTO ggtx_index_product VALUES(NULL,4,'四川 农家自种 高山 新土豆 2.5kg 大土豆 单个350g','/img/index_product/26.png','29.9','26');
INSERT INTO ggtx_index_product VALUES(NULL,4,'安岳柠檬1斤装包邮','/img/index_product/27.jpg','9.9','27');
INSERT INTO ggtx_index_product VALUES(NULL,4,'安岳柠檬2斤装精品果','/img/index_product/28.jpg','14.9','28');
INSERT INTO ggtx_index_product VALUES(NULL,4,'安岳柠檬精品果5斤装包邮','/img/index_product/29.jpg','29.9','29');
INSERT INTO ggtx_index_product VALUES(NULL,4,'昭化朝阳贡桃中大果','/img/index_product/30.jpg','39.9','30');
INSERT INTO ggtx_index_product VALUES(NULL,4,'广元苍溪红心猕猴桃四川红心奇异果 中果15枚 70-90g','/img/index_product/31.jpg','29.9','31');
INSERT INTO ggtx_index_product VALUES(NULL,4,'广元苍溪红心猕猴桃四川红心奇异果 大果12枚 90-110g','/img/index_product/32.jpg','39.9','32');


#创建商品详情列表ggtx_product_details
CREATE TABLE ggtx_product_details(
  did INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT,
  pic VARCHAR(128),
  title VARCHAR(64),
  specification VARCHAR(64),
	weight VARCHAR(64),
	discount VARCHAR(64),
	price DECIMAL(10,2),
	tips VARCHAR(64)
);
INSERT INTO ggtx_product_details VALUES(NULL,1,'/img/index_product/1.jpg','剑蜀酸辣粉268g带料包2袋装','268g','1.50KG','无','19.9','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,1,'/img/index_product/2.png','四川特产香菇酱220g下饭酱 牛肉酱','220g','1.50KG','无','12.9','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,1,'/img/index_product/3.png','精珍 四川特产香菇酱220g2瓶装','220g','1.50KG','无','24.9','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,1,'/img/index_product/4.png','火锅油碟罐装 芝麻调和油火锅调味蘸料 70ml','70ml','1.50KG','无','3.5','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,1,'/img/index_product/5.png','木姜子油135ML山胡椒油山苍子油酸汤鱼调料 1瓶 135ml','135ml','1.50KG','无','9.9','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,1,'/img/index_product/6.jpg','重庆江津九叶鲜青花椒油藤椒油花椒油麻椒油 60ml','60ml','1.50KG','无','14.9','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,1,'/img/index_product/7.png','江津新鲜保鲜花椒四川鲜藤椒青花椒300g两袋装','300g/袋','1.50KG','无','29.9','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,1,'/img/index_product/8.jpg','剑蜀手工酸辣粉桶装246gx6桶装','桶','1.50KG','无','49.9','登录后使用微信、支付宝或预付款购买。');

INSERT INTO ggtx_product_details VALUES(NULL,2,'/img/index_product/9.jpg','荣飞 琥珀核桃仁 90g罐装','90g','0.10KG','无','16.9','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,2,'/img/index_product/10.jpg','荣飞琥珀桃仁每日坚果礼盒','16gx30袋','1.50KG','无','49.9','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,2,'/img/index_product/11.jpg','剑蜀 火锅苕粉 土豆粉超值组合装 带火锅料 懒人火锅 1袋苕粉+1袋土豆粉','275g/袋','1.50KG','无','19.9','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,2,'/img/index_product/12.png','饶大姐（raodajie） 花生酥 喜糖果 四川小吃150g/袋 1袋装','150g/袋','1.50KG','无','9.9','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,2,'/img/index_product/13.png','农家手作米豆腐灰水馍馍 2根装','2根装','1.50KG','无','12.9','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,2,'/img/index_product/14.jpg','荣飞琥珀桃仁30gx6袋','袋','0.18KG','无','29.9','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,2,'/img/index_product/15.jpg','荣飞琥珀桃仁65gx3袋','袋','0.10KG','无','32.8','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,2,'/img/index_product/16.jpg','蜀行侠 剑门关老豆干豆腐干160g/袋','袋','0.16KG','无','5.8','登录后使用微信、支付宝或预付款购买。');

INSERT INTO ggtx_product_details VALUES(NULL,3,'/img/index_product/17.jpg','广元七绝 朝天核桃2.5kg礼盒','2.5kg','1.50KG','无','90','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,3,'/img/index_product/18.jpg','青川山珍干货菌菇大礼包 家庭装325g','325g','1.50KG','无','99','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,3,'/img/index_product/19.jpg','广供天下 青川山珍干货菌菇大礼包 超值装','','2.50KG','无','128','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,3,'/img/index_product/20.jpg','干货青川竹荪不开伞广元七绝土特产50g盒装无硫熏朵型完整爽脆','','0.10KG','无','49','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,3,'/img/index_product/21.jpg','广元七绝青川山珍黑木耳长裙竹荪黄花天麻片核桃花香菇野生青杠菌','','2.00KG','无','198','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,3,'/img/index_product/22.jpg','干货青川椴木黑木耳200g盒装广元七绝土特产农家自产秋木耳脆嫩','','0.40KG','无','39.9','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,3,'/img/index_product/23.jpg','广元七绝猴头菇200g盒装土特产干货山珍精品煲汤烧肉各类人群食用','','0.40KG','无','46.9','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,3,'/img/index_product/24.jpg','青川野生天麻四川特产滋补营养品无硫50g一级深山小天麻冬麻','','0.10KG','无','19.9','登录后使用微信、支付宝或预付款购买。');

INSERT INTO ggtx_product_details VALUES(NULL,4,'/img/index_product/25.png','四川农家自种洋葱2.5kg','2.5kg','2.50KG','无','19.9','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,4,'/img/index_product/26.png','四川 农家自种 高山 新土豆 2.5kg 大土豆 单个350g','2.5kg','1.50KG','无','29.9','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,4,'/img/index_product/27.jpg','安岳柠檬1斤装包邮','','0.50KG','无','9.9','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,4,'/img/index_product/28.jpg','安岳柠檬2斤装精品果','','1.00KG','无','14.9','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,4,'/img/index_product/29.jpg','安岳柠檬精品果5斤装包邮','','2.50KG','无','29.9','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,4,'/img/index_product/30.jpg','昭化朝阳贡桃中大果','5斤装','2.50KG','无','39.9','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,4,'/img/index_product/31.jpg','广元苍溪红心猕猴桃四川红心奇异果 中果15枚 70-90g','15枚','1.05KG','无','29.9','登录后使用微信、支付宝或预付款购买。');
INSERT INTO ggtx_product_details VALUES(NULL,4,'/img/index_product/32.jpg','广元苍溪红心猕猴桃四川红心奇异果 大果12枚 90-110g','大果12枚','1.30KG','无','39.9','登录后使用微信、支付宝或预付款购买。');