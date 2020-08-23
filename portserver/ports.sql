

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
  conurl varchar(100) NOT NULL UNIQUE COMMENT "图片地址"
);
#插入数据
INSERT INTO contentx VALUES(NULL,'http://localhost:3003/portsimg/content1.jpg');
INSERT INTO contentx VALUES(NULL,'http://localhost:3003/portsimg/content2.jpg');
INSERT INTO contentx VALUES(NULL,'http://localhost:3003/portsimg/content3.jpg');
INSERT INTO contentx VALUES(NULL,'http://localhost:3003/portsimg/content4.jpg');
INSERT INTO contentx VALUES(NULL,'http://localhost:3003/portsimg/content5.mp4');
INSERT INTO contentx VALUES(NULL,'http://localhost:3003/portsimg/content6.jpg');



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