// 引入express
const express=require('express');
// 引入连接池模块
const pool=require('../pool/pool.js');
// 创建路由对象
const router=express.Router();
// 轮播图API
router.get('/bannerList',(req,res)=>{
  let sql='SELECT banurl,tourl FROM banner';  
  pool.query(sql,(err,rs)=>{
    if(err) throw err;
    // console.log(rs);
    res.send(rs);
  })
})
// 首页加载API
router.get('/content',(req,res)=>{
  
})
// 商品列表API
router.get('/products',(req,res)=>{
  let sql='SELECT count(pid) AS count FROM product';
  pool.query(sql,(err,rs1)=>{
    if(err) throw err;
    // console.log(rs1)
    let count=rs1[0].count;
    // 声明变量用于储存每页显示的记录数(自定义每页显示20条数据)
    let pagesize=20;
    // 计算当前产品页总页数
    let pagecount=Math.ceil(count/pagesize);
    // sql语句查询第一页数据
    sql='SELECT * FROM product LIMIT 0,'+pagesize;
    pool.query(sql,(err,rs2)=>{
      if(err) throw err;
      // console.log(rs2);
      // 返回第一页数据以及该产品总页数
      res.send({message:"查询成功",code:1,result:rs2,pagecount:pagecount,counts:count});
    })
  });
});
// 商品分页API
// 上一页
router.get('/prel',(req,res)=>{
  // 获取页码和每页数量
  let obj1=req.query.page;
  let obj2=req.query.pagesize;
  // 计算返回的起始数据条
  let obj3=(obj1-1)*obj2;
  console.log(obj1,obj2);
  let sql='SELECT * FROM product LIMIT '+obj3+','+obj2;
  pool.query(sql,(err,rs)=>{
  if(err) throw err;
  console.log(rs);
  res.send(rs);
  })
});
// 下一页
router.get('/nextr',(req,res)=>{
  let obj1=req.query.page;
  let obj2=req.query.pagesize;
  let obj3=(obj1-1)*obj2;
  console.log(obj1,obj2);
  let sql='SELECT * FROM product LIMIT '+obj3+','+obj2;
  pool.query(sql,(err,rs)=>{
  if(err) throw err;
  console.log(rs);
  res.send(rs);
  })
});
// 某一页
router.get('/pagev',(req,res)=>{
  let obj1=req.query.page;
  let obj2=req.query.pagesize;
  let obj3=(obj1-1)*obj2;
  console.log(obj1,obj2);
  let sql='SELECT * FROM product LIMIT '+obj3+','+obj2;
  pool.query(sql,(err,rs)=>{
  if(err) throw err;
  console.log(rs);
  res.send(rs);
  })
});



// 商品价格递增API
router.get('/dizeng',(req,res)=>{
  let sql='SELECT * FROM product order by price ASC';
  pool.query(sql,(err,rs)=>{
    if(err) throw err;
    res.send(rs);
  })
});
// 商品价格递减API
router.get('/dijian',(req,res)=>{
  let sql='SELECT * FROM product order by price DESC';
  pool.query(sql,(err,rs)=>{
    if(err) throw err;
    res.send(rs);
  })
});
// 商品价格区间API
router.get('/interval',(req,res)=>{
  let obj1=req.query.min;
  let obj2=req.query.max;
  // console.log(obj1,obj2);
  let sql='SELECT * FROM product WHERE price between ? and ?';
  pool.query(sql,[obj1,obj2],(err,rs)=>{
    if(err) throw err;
    // console.log(rs);
    res.send(rs);
  })
});

// 商品详情页API
router.get('/detail',(req,res)=>{
  let obj1=req.query.min;
  let obj2=req.query.max;
  // console.log(obj1,obj2);
  let sql='SELECT * FROM product WHERE price between ? and ?';
  pool.query(sql,[obj1,obj2],(err,rs)=>{
    if(err) throw err;
    console.log(rs);
    // res.send(rs);
  })
});
// 猜你喜欢
router.get('/random',(req,res)=>{
  let obj=req.query.id1;
  console.log(obj);
  let sql='SELECT * FROM youlike WHERE id='+obj;
  pool.query(sql,(err,rs)=>{
    if(err) throw err;
    let img1=rs[0].imagex;
    console.log(img1);
    
    sql='SELECT * FROM youlike WHERE id='+obj;
    pool.query(sql,(err,rs)=>{
      if(err) throw err;
      let img2=rs[0].imagex;
      console.log(img2);
      
      sql='SELECT * FROM youlike WHERE id='+obj;
      pool.query(sql,(err,rs)=>{
        if(err) throw err;
        let img3=rs[0].imagex;
        console.log(img3);
   
        sql='SELECT * FROM youlike WHERE id='+obj;
        pool.query(sql,(err,rs)=>{
          if(err) throw err;
          let img4=rs[0].imagex;
          console.log(img4);
          res.send({message:"查询成功",code:1,img1:img1,img2:img2,img3:img3,img4:img4,});
        })
      })
    })
  })
});
// 导出路由对象
module.exports=router;