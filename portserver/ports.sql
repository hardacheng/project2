

#设置客户端的编码方式
SET NAMES UTF8;
#丢弃数据库如果存在
DROP DATABASE IF EXISTS ports;
#创建数据库，编码方式为utf8
CREATE DATABASE ports  CHARSET=UTF8;
#进入数据库
USE ports;

#创建保存用户信息的表(穿搭者) wearer
CREATE TABLE wearer(
  wid INT PRIMARY KEY AUTO_INCREMENT COMMENT '用户ID,主键且自增',
  wname varchar(20) UNIQUE NOT NULL COMMENT '用户名，唯一', 
  password varchar(32) NOT NULL COMMENT '用户密码,MD5',
  phone varchar(11) UNIQUE NOT NULL COMMENT '用户电话号码',
  gender INT NOT NULL DEFAULT 1 COMMENT '性别'
);

#插入数据
INSERT INTO wearer VALUES(NULL,'kklike','12345678','13354045678',1);
INSERT INTO wearer VALUES(NULL,'woxiangni','0123456789','18884654781',default);
INSERT INTO wearer VALUES(NULL,'whoyouare','001122334455','15874852677',default);

#创建女装商品列表
CREATE TABLE product(
  pid INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT COMMENT '数量',
  xid varchar(50) NOT NULL COMMENT '商品ID',
  title varchar(50) COMMENT '商品名称',
  price INT(10) DEFAULT 99999 COMMENT '商品价格',
  image1 varchar(100) COMMENT "主图地址",
  image2 varchar(100)   COMMENT "主图切换地址"

);

#插入数据
INSERT INTO product VALUES(NULL,'LL9P065LWB006','女装宽脚口长裤',4299,'http://localhost:3003/product/1.jpg','http://localhost:3003/product/1_1.jpg');
INSERT INTO product VALUES(NULL,'LL9B060LWT007','女装长袖衬衫',4299,'http://localhost:3003/product/2.jpg','http://localhost:3003/product/2_1.jpg');
INSERT INTO product VALUES(NULL,'LL9B012LFS005','女装长袖衬衫',4699,'http://localhost:3003/product/3.jpg','http://localhost:3003/product/3_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9B076LFS005','女装长袖衬衫',3699,'http://localhost:3003/product/5.jpg','http://localhost:3003/product/5_1.jpg');
INSERT INTO product VALUES(NULL,'LL9S015LWW042','女装中长裙',3699,'http://localhost:3003/product/6.jpg','http://localhost:3003/product/6_1.jpg');
INSERT INTO product VALUES(NULL,'LL9D168LPT035','女装中长裙',3699,'http://localhost:3003/product/7.jpg','http://localhost:3003/product/7_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K520LKF037','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/8.jpg','http://localhost:3003/product/8_1.jpg');
INSERT INTO product VALUES(NULL,'LL9P095HWQ020','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/9.jpg','http://localhost:3003/product/9_1.jpg');
INSERT INTO product VALUES(NULL,'LL9P046LWW042','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/10.jpg','http://localhost:3003/product/10_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');
INSERT INTO product VALUES(NULL,'LL9K473LZW006','女装针织长袖高领套头衫',3699,'http://localhost:3003/product/4.jpg','http://localhost:3003/product/4_1.jpg');






#创建轮播图列表
CREATE TABLE banner(
  bid INT PRIMARY KEY NOT NULL AUTO_INCREMENT COMMENT '轮播图id',
  banurl varchar(100) NOT NULL UNIQUE COMMENT "轮播图地址",
  tourl varchar(100) NOT NULL  COMMENT "轮播图跳转地址"
);
#插入数据
INSERT INTO banner VALUES(NULL,'http://localhost:3003/portsimg/ban1.jpg','/');
INSERT INTO banner VALUES(NULL,'http://localhost:3003/portsimg/ban2.jpg','/');
INSERT INTO banner VALUES(NULL,'http://localhost:3003/portsimg/ban3.jpg','/');
INSERT INTO banner VALUES(NULL,'http://localhost:3003/portsimg/ban4.jpg','/');
INSERT INTO banner VALUES(NULL,'http://localhost:3003/portsimg/ban5.jpg','/');
INSERT INTO banner VALUES(NULL,'http://localhost:3003/portsimg/ban6.jpg','/');

#创建首页信息列表
CREATE TABLE contentx(
  cid INT PRIMARY KEY NOT NULL AUTO_INCREMENT COMMENT '内容图片id',
  conurl varchar(100) NOT NULL COMMENT "图片地址",
  conurlto varchar(100) NOT NULL COMMENT "图片对应地址"
);
#插入数据
INSERT INTO contentx VALUES(NULL,'http://localhost:3003/portsimg/content1.jpg','/product');
INSERT INTO contentx VALUES(NULL,'http://localhost:3003/portsimg/content2.jpg','/login');
INSERT INTO contentx VALUES(NULL,'http://localhost:3003/portsimg/content3.jpg','/');
INSERT INTO contentx VALUES(NULL,'http://localhost:3003/portsimg/content4.jpg','/');
INSERT INTO contentx VALUES(NULL,'http://localhost:3003/portsimg/content5.mp4','/');
INSERT INTO contentx VALUES(NULL,'http://localhost:3003/portsimg/content6.jpg','/');
INSERT INTO contentx VALUES(NULL,'http://localhost:3003/portsimg/video.jpg','/');



#猜你喜欢表
CREATE TABLE youlike(
  id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  imagex varchar(100) NOT NULL COMMENT '商品颜色(图片)'
);
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/9.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/10.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/11.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/12.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/11.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/10.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/9.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/12.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/9.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/12.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/10.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/11.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/9.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/11.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/10.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/12.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/9.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/11.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/9.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/12.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/11.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/10.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/9.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/12.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/11.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/9.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/10.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/12.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/11.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/10.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/9.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/12.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/10.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/11.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/12.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/9.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/10.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/12.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/10.jpg');
INSERT INTO youlike VALUES(NULL,'http://localhost:3003/detail/11.jpg');



#创建尺码表头标题表(每个产品对应的尺码表表头信息)
CREATE TABLE sizeth(
  id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT COMMENT '数量',
  xid varchar(50) NOT NULL COMMENT '商品款号ID',
  t1 varchar(50) COMMENT '尺码名称',
  t2 varchar(50) COMMENT '尺码名称',
  t3 varchar(50) COMMENT '尺码名称',
  t4 varchar(50) COMMENT '尺码名称',
  t5 varchar(50) COMMENT '尺码名称'                                                                              
);
#插入数据
INSERT INTO sizeth VALUES(NULL,'LL9B012LFS005','尺寸','胸围','衣长','袖口宽','袖克夫高');
INSERT INTO sizeth VALUES(NULL,'LL9P065LWB006','尺寸','胸围','衣长','袖口宽','袖克夫高');
INSERT INTO sizeth VALUES(NULL,'LL9B012LFS005','尺寸','腰圍','衣长','手袖宽','袖克夫高');
INSERT INTO sizeth VALUES(NULL,'LL9B060LWT007','尺寸','胸围','腰圍','袖口宽','袖克夫高');
INSERT INTO sizeth VALUES(NULL,'LL9K473LZW006','尺寸','臀圍','胸围','袖口宽','袖克夫高');
INSERT INTO sizeth VALUES(NULL,'LL9S015LWW042','尺寸','胸围','衣长','袖口宽','袖克夫高');



#创建尺码表数据表(每个产品对应的尺码信息)
CREATE TABLE size(
  id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT COMMENT '数量',
  xid varchar(50) NOT NULL COMMENT '商品款号ID',
  s1 varchar(50) COMMENT '尺码',
  s2 varchar(50) COMMENT '尺码',
  s3 varchar(50) COMMENT '尺码',
  s4 varchar(50) COMMENT '尺码',
  s5 varchar(50) COMMENT '尺码'
);
#插入数据
INSERT INTO size VALUES(NULL,'LL9B012LFS005','ONESIZE','133','73','22','12');
INSERT INTO size VALUES(NULL,'LL9P065LWB006','2','133','73','22','12');
INSERT INTO size VALUES(NULL,'LL9B076LFS005','xs','133','73','22','12');
INSERT INTO size VALUES(NULL,'LL9B076LFS005','s','133','73','22','12');
INSERT INTO size VALUES(NULL,'LL9B076LFS005','l','133','73','22','12');
INSERT INTO size VALUES(NULL,'LL9B060LWT007','xl','133','73','22','12');

INSERT INTO size VALUES(NULL,'LL9P065LWB006','54','133','73','22','12');
INSERT INTO size VALUES(NULL,'LL9B076LFS005','87','133','73','22','12');




#创建产品分类表(产品归属哪个类天道面包屑导航上)
CREATE TABLE sort(
  id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT COMMENT '分类ID',
  xid varchar(50) NOT NULL COMMENT '商品款号ID',
  o1 varchar(50) COMMENT '归属大类',
  o1url varchar(100) NOT NULL COMMENT '归属大类对应地址',
  o2 varchar(50) COMMENT '归属中类',
  o2url varchar(100) NOT NULL COMMENT '归属中类对应地址',
  o3 varchar(50) COMMENT '归属小类',
  o3url varchar(100) NOT NULL COMMENT '归属小类对应地址'
);
#插入数据
INSERT INTO sort VALUES(NULL,'LL9B012LFS005',' Ports International 女装','/','衬衫','/','长袖衬衫','/');
INSERT INTO sort VALUES(NULL,'LL9P065LWB006',' Ports International 女装','/','衬衫','/','长袖衬衫','/');
INSERT INTO sort VALUES(NULL,'LL9B076LFS005',' Ports International 女装','/','衬衫','/','长袖衬衫','/');
INSERT INTO sort VALUES(NULL,'LL9B060LWT007',' Ports International 女装','/','衬衫','/','长袖衬衫','/');
INSERT INTO sort VALUES(NULL,'LL9K473LZW006',' Ports International 女装','/','衬衫','/','长袖衬衫','/');
INSERT INTO sort VALUES(NULL,'LL9S015LWW042',' Ports International 女装','/','衬衫','/','长袖衬衫','/');




#猜你喜欢可以从详情页查询获得也可以从猜你喜欢表获得（只要图片尺寸合适）

#创建产品详情信息表 
CREATE TABLE pdetail(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT COMMENT '商品排序ID',
  xid varchar(50) NOT NULL COMMENT '商品款号ID',
  title varchar(50) NOT NULL COMMENT '商品名称',
  price INT(10) DEFAULT 99999 COMMENT '商品价格',
  image varchar(100) NOT NULL COMMENT '商品颜色(图片)',
  #t1 varchar(50) COMMENT '尺码名称',(因为尺码名有多个，需要在尺寸表里取出循环)
  t1 INT COMMENT '商品数量',
  pdesc varchar(200) COMMENT '商品描述',
  shuoming varchar(300) COMMENT '面料说明',
  smimg1 varchar(100) NOT NULL COMMENT '商品展示图',
  smimg2 varchar(100) NOT NULL COMMENT '商品展示图',
  smimg3 varchar(100) NOT NULL COMMENT '商品展示图',
  smimg4 varchar(100) NOT NULL COMMENT '商品展示图',
  smimg5 varchar(100) NOT NULL COMMENT '商品展示图',
  bgimg1 varchar(100) NOT NULL COMMENT '商品展示图',
  bgimg2 varchar(100) NOT NULL COMMENT '商品展示图',
  bgimg3 varchar(100) NOT NULL COMMENT '商品展示图',
  bgimg4 varchar(100) NOT NULL COMMENT '商品展示图',
  bgimg5 varchar(100) NOT NULL COMMENT '商品展示图'
);


#插入数据
INSERT INTO pdetail VALUES(NULL,'LL9B012LFS005','女装长袖衬衫',4699,'http://localhost:3003/detail/1a.jpg',0,'','100% 桑蚕丝','http://localhost:3003/detail/1_1.jpg','http://localhost:3003/detail/1_2.jpg','http://localhost:3003/detail/1_3.jpg','http://localhost:3003/detail/1_4.jpg','http://localhost:3003/detail/1_5.jpg','http://localhost:3003/detail/1.jpg','http://localhost:3003/detail/2.jpg','http://localhost:3003/detail/3.jpg','http://localhost:3003/detail/4.jpg','http://localhost:3003/detail/5.jpg');
INSERT INTO pdetail VALUES(NULL,'LL9P065LWB006','女装长袖衬衫',4699,'http://localhost:3003/detail/1a.jpg',0,'','100% 桑蚕丝','http://localhost:3003/detail/1_1.jpg','http://localhost:3003/detail/1_2.jpg','http://localhost:3003/detail/1_3.jpg','http://localhost:3003/detail/1_4.jpg','http://localhost:3003/detail/1_5.jpg','http://localhost:3003/detail/1.jpg','http://localhost:3003/detail/2.jpg','http://localhost:3003/detail/3.jpg','http://localhost:3003/detail/4.jpg','http://localhost:3003/detail/5.jpg');
INSERT INTO pdetail VALUES(NULL,'LL9B060LWT007','女装长袖衬衫',4699,'http://localhost:3003/detail/1a.jpg',0,'','100% 桑蚕丝','http://localhost:3003/detail/1_1.jpg','http://localhost:3003/detail/1_2.jpg','http://localhost:3003/detail/1_3.jpg','http://localhost:3003/detail/1_4.jpg','http://localhost:3003/detail/1_5.jpg','http://localhost:3003/detail/1.jpg','http://localhost:3003/detail/2.jpg','http://localhost:3003/detail/3.jpg','http://localhost:3003/detail/4.jpg','http://localhost:3003/detail/5.jpg');
INSERT INTO pdetail VALUES(NULL,'LL9K473LZW006','女装长袖衬衫',4699,'http://localhost:3003/detail/1a.jpg',0,'','100% 桑蚕丝','http://localhost:3003/detail/1_1.jpg','http://localhost:3003/detail/1_2.jpg','http://localhost:3003/detail/1_3.jpg','http://localhost:3003/detail/1_4.jpg','http://localhost:3003/detail/1_5.jpg','http://localhost:3003/detail/1.jpg','http://localhost:3003/detail/2.jpg','http://localhost:3003/detail/3.jpg','http://localhost:3003/detail/4.jpg','http://localhost:3003/detail/5.jpg');
INSERT INTO pdetail VALUES(NULL,'LL9B076LFS005','女装长袖衬衫',4699,'http://localhost:3003/detail/1a.jpg',0,'','100% 桑蚕丝','http://localhost:3003/detail/1_1.jpg','http://localhost:3003/detail/1_2.jpg','http://localhost:3003/detail/1_3.jpg','http://localhost:3003/detail/1_4.jpg','http://localhost:3003/detail/1_5.jpg','http://localhost:3003/detail/1.jpg','http://localhost:3003/detail/2.jpg','http://localhost:3003/detail/3.jpg','http://localhost:3003/detail/4.jpg','http://localhost:3003/detail/5.jpg');
INSERT INTO pdetail VALUES(NULL,'LL9S015LWW042','女装长袖衬衫',4699,'http://localhost:3003/detail/1a.jpg',0,'','100% 桑蚕丝','http://localhost:3003/detail/1_1.jpg','http://localhost:3003/detail/1_2.jpg','http://localhost:3003/detail/1_3.jpg','http://localhost:3003/detail/1_4.jpg','http://localhost:3003/detail/1_5.jpg','http://localhost:3003/detail/1.jpg','http://localhost:3003/detail/2.jpg','http://localhost:3003/detail/3.jpg','http://localhost:3003/detail/4.jpg','http://localhost:3003/detail/5.jpg');
INSERT INTO pdetail VALUES(NULL,'LL9D168LPT035','女装长袖衬衫',4699,'http://localhost:3003/detail/1a.jpg',0,'','100% 桑蚕丝','http://localhost:3003/detail/1_1.jpg','http://localhost:3003/detail/1_2.jpg','http://localhost:3003/detail/1_3.jpg','http://localhost:3003/detail/1_4.jpg','http://localhost:3003/detail/1_5.jpg','http://localhost:3003/detail/1.jpg','http://localhost:3003/detail/2.jpg','http://localhost:3003/detail/3.jpg','http://localhost:3003/detail/4.jpg','http://localhost:3003/detail/5.jpg');
INSERT INTO pdetail VALUES(NULL,'LL9K520LKF037','女装长袖衬衫',4699,'http://localhost:3003/detail/1a.jpg',0,'','100% 桑蚕丝','http://localhost:3003/detail/1_1.jpg','http://localhost:3003/detail/1_2.jpg','http://localhost:3003/detail/1_3.jpg','http://localhost:3003/detail/1_4.jpg','http://localhost:3003/detail/1_5.jpg','http://localhost:3003/detail/1.jpg','http://localhost:3003/detail/2.jpg','http://localhost:3003/detail/3.jpg','http://localhost:3003/detail/4.jpg','http://localhost:3003/detail/5.jpg');
INSERT INTO pdetail VALUES(NULL,'LL9P095HWQ020','女装长袖衬衫',4699,'http://localhost:3003/detail/1a.jpg',0,'','100% 桑蚕丝','http://localhost:3003/detail/1_1.jpg','http://localhost:3003/detail/1_2.jpg','http://localhost:3003/detail/1_3.jpg','http://localhost:3003/detail/1_4.jpg','http://localhost:3003/detail/1_5.jpg','http://localhost:3003/detail/1.jpg','http://localhost:3003/detail/2.jpg','http://localhost:3003/detail/3.jpg','http://localhost:3003/detail/4.jpg','http://localhost:3003/detail/5.jpg');
INSERT INTO pdetail VALUES(NULL,'LL9P046LWW042','女装长袖衬衫',4699,'http://localhost:3003/detail/1a.jpg',0,'','100% 桑蚕丝','http://localhost:3003/detail/1_1.jpg','http://localhost:3003/detail/1_2.jpg','http://localhost:3003/detail/1_3.jpg','http://localhost:3003/detail/1_4.jpg','http://localhost:3003/detail/1_5.jpg','http://localhost:3003/detail/1.jpg','http://localhost:3003/detail/2.jpg','http://localhost:3003/detail/3.jpg','http://localhost:3003/detail/4.jpg','http://localhost:3003/detail/5.jpg');





