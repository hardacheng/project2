// 引入express模块
const express=require('express');
// 引入cors模块（解决跨域请求）
const cors=require('cors');
// 引入body-parser中间件(解析post传递的数据)
const bodyParser=require('body-parser');
// 引入路由文件
// 用户路由
const  useRouter=require('./router/user.js')
// 商品路由
const  proRouter=require('./router/product.js')
// 创建web 服务器
const server=express();
// 将cors作为server的中间件使用
server.use(cors({
  origin:['http://127.0.0.1:8080','http://localhost:8080']
}))

// 指定监听端口号
server.listen(3003);


// 使用中间件保存静态资源
server.use(express.static('public'));

// 使用body-parser中间件
server.use(bodyParser.urlencoded({
  extended:false
	  //如果设置为false，那么对URL-encoded的数据的解析采用querystring库；
  //如果设置为true，那么采用qs库，允许将富对象和数组编码为url编码格式，允许使用url编码的json体验。
}))

// 挂载服务器
server.use('/user',useRouter);
server.use('/pro',proRouter);

