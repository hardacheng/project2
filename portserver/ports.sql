#该数据库中有两个表（用户表和商品表）
#用户表
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

#创建商品列表
CREATE TABLE product(
  pid INT PRIMARY KEY NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  title varchar(50) NOT NULL UNIQUE COMMENT '商品名称',
  price INT(10) NOT NULL DEFAULT 99999 COMMENT '商品价格',
  pnumber varchar(40) NOT NULL UNIQUE COMMENT '商品编号',
  colorimage varchar(60) DEFAULT NULL COMMENT '商品颜色' 
);

#插入数据
INSERT INTO product VALUES(NULL,'女装长袖长连衣裙',18400,'PW220DLSA8-FPLP105','19/19124/271D4/ColorCrop_16E62507EBA0.jpg');
INSERT INTO product VALUES(NULL,'【明星同款】PORTS 1961无袖连衣裙',6800,'PW118DSS62-FCOS036','19/19124/271D4/ColorCrop_16E62507EBA0.jpg');
INSERT INTO product VALUES(NULL,'PORTS 1961长袖夹克',12400,'PW119JSB21-FPLU620','22/22067/FB17B//ColorCrop_C846AFEB972D.jpg');
