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
    let obj1=rs;
    // console.log(rs);
    sql='SELECT * FROM contentx';
    pool.query(sql,(err,rs)=>{
      if(err) throw err;
      // console.log(rs);
      let obj2=rs;
      res.send({message:"查询成功",code:1,obj1:obj1,obj2:obj2});
    })
  })
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
  let obj=req.query;
  // let obj2=req.query.max;
  console.log(obj);
  let sql='SELECT * FROM pdetail WHERE xid=?';
  pool.query(sql,[obj],(err,rs)=>{
    if(err) throw err;
    console.log(rs);
    // res.send(rs);
  })
});
// 详情页+猜你喜欢
router.get('/random',(req,res)=>{
  let obj=req.query;
  console.log(obj);
  let sql='SELECT * FROM youlike WHERE id=?';
  pool.query(sql,[obj.id1],(err,rs)=>{
    if(err) throw err;
    let img1=rs[0].imagex;
    console.log(rs);
    sql='SELECT * FROM youlike WHERE id=?';
    pool.query(sql,[obj.id2],(err,rs)=>{
      if(err) throw err;
      let img2=rs[0].imagex;
      // console.log(img1,img2);
      sql='SELECT * FROM youlike WHERE id=?';
      pool.query(sql,[obj.id3],(err,rs)=>{
        if(err) throw err;
        let img3=rs[0].imagex;
        // console.log(img1,img2,img3);
        sql='SELECT * FROM youlike WHERE id=?';
        pool.query(sql,[obj.id4],(err,rs)=>{
          if(err) throw err;
          // console.log(rs)
          let img4=rs[0].imagex;
          // console.log(img1,img2,img3,img4);
          sql='SELECT * FROM youlike WHERE id=?';
          pool.query(sql,[obj.id5],(err,rs)=>{
            if(err) throw err;
            // console.log(rs)
            let img5=rs[0].imagex;
            // console.log(img1,img2,img3,img4,img5);
            // res.send({message:"查询成功",img1:img1,img2:img2,img3:img3,img4:img4,img5:img5});
            sql='SELECT * FROM pdetail WHERE xid=?'
            pool.query(sql,[obj.xid],(err,rs)=>{
              if(err) throw err;
              // 保存详情数据
              let title=rs[0].title;
              let price=rs[0].price;
              let image=rs[0].image;
              let t1=rs[0].t1;
              let pdesc=rs[0].pdesc;
              let shuoming=rs[0].shuoming;
              let smimg1=rs[0].smimg1;
              let smimg2=rs[0].smimg2;
              let smimg3=rs[0].smimg3;
              let smimg4=rs[0].smimg4;
              let smimg5=rs[0].smimg5;
              let bgimg1=rs[0].bgimg1;
              let bgimg2=rs[0].bgimg2;
              let bgimg3=rs[0].bgimg3;
              let bgimg4=rs[0].bgimg4;
              let bgimg5=rs[0].bgimg5;
              // console.log(title);
              sql='SELECT * FROM sort WHERE xid=?'
              pool.query(sql,[obj.xid],(err,rs)=>{
                if(err) throw err;
                // 保存面包屑及其对应的跳转路径
                let o1=rs[0].o1;
                let o1url=rs[0].o1url;
                let o2=rs[0].o2;
                let o2url=rs[0].o2url;
                let o3=rs[0].o3;
                let o3url=rs[0].o3url;
                sql='SELECT * FROM sizeth WHERE xid=?'
                pool.query(sql,[obj.xid],(err,rs)=>{
                  if(err) throw err;
                  // 保存尺码表头信息
                  let ts1=rs[0].t1;
                  let ts2=rs[0].t2;
                  let ts3=rs[0].t3;
                  let ts4=rs[0].t4;
                  let ts5=rs[0].t5;
                  sql='SELECT * FROM size WHERE xid=?'
                  pool.query(sql,[obj.xid],(err,rs)=>{
                    if(err) throw err;
                    // 保存尺码具体数据
                    let s1=rs[0].s1;
                    let s2=rs[0].s2;
                    let s3=rs[0].s3;
                    let s4=rs[0].s4;
                    let s5=rs[0].s5;
                    console.log(rs);
                    // 将所有信息集合在一起返回
                    res.send({message:"查询成功",img1:img1,img2:img2,img3:img3,img4:img4,img5:img5,title:title,price:price,image:image,t1:t1,pdesc:pdesc,shuoming:shuoming,smimg1:smimg1,smimg2:smimg2,smimg3:smimg3,smimg4:smimg4,smimg5:smimg5,bgimg1:bgimg1,bgimg2:bgimg2,bgimg3:bgimg3,bgimg4:bgimg4,bgimg5:bgimg5,o1:o1,o1url:o1url,o2:o2,o2url:o2url,o3:o3,o3url:o3url,ts1:ts1,ts2:ts2,ts3:ts3,ts4:ts4,ts5:ts5,s1:s1,s2:s2,s3:s3,s4:s4,s5:s5});

                  });
                });
              });
            });
          });
        });
      });
    });
  });
});

// 导出路由对象
module.exports=router;