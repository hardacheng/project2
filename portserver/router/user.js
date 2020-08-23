// 引入express模块
const express=require('express');
const { Server } = require('http');

// 引入连接池模块
const pool=require('../pool/pool.js')
// 创建路由对象
const router=express.Router();
// 用户注册验证查重API
router.get('/check',(req,res)=>{
  // sql语句
  let phone=req.query.phone;
  let sql=`SELECT phone FROM wearer WHERE phone=${phone}`;
  pool.query(sql,(err,rs)=>{
    if(err) throw err;
    // 返回的是个数组对象,如果长度为0，表示没有这个号码，可以添加返回1
    // console.log(rs);
    if(rs.length==0){
      res.send('1');
    }else{
      res.send('0');
    }
  })
});
//用户注册API
router.post('/register',(req,res)=>{
	//获取闯入过来的注册数据
	let obj=req.body;
  // console.log(obj);
	//插入数据的sql语句
	let sql='INSERT INTO wearer SET ?';
	pool.query(sql,[obj],(err,rs)=>{
    if(err) throw err;
    // 如果返回结果中影响的行数大于0，则添加数据成功
		// console.log(rs.affectedRows);
    if(rs.affectedRows>0){
      res.send('1');
    }else{
      res.send('0');
    }
	});
});

// 用户登录
router.post('/login',(req,res)=>{
  let obj1=req.body.phone;
  let obj2=req.body.password;
  // 验证登录的sql语句
  let sql='SELECT * FROM wearer WHERE phone=? AND password=?';
  pool.query(sql,[obj1,obj2],(err,rs)=>{
    if(err) throw err;
    // 返回的rs为一个数组
    if(rs.length>0){
      res.send('1');
    }else{
      res.send('0');
    }
  });
})



// 导出路由对象
module.exports=router;