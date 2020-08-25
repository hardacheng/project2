<template>
  <div class="container">
    <div class="productde">
      <!-- 面包屑 -->
      <div class="bread">
        <router-link to="/">首页</router-link>
        /
        <span>
          <router-link :to="like.o1url">{{like.o1}}</router-link>
          /
        </span>
        <span>
          <router-link :to="like.o2url">{{like.o2}}</router-link>
          /
        </span>
        <span>
          <router-link :to="like.o3url">{{like.o3}}</router-link>
          /
        </span>
        详细
      </div>
      <div class="borderh"></div>
      <div class="deban">
        <!-- 左侧上下拉动框开始 -->
        <div class="prodl">
          <div class="pre" @click="ptop"></div>
          <div class="smalll">
            <div class="p_list" :style="top_gun">
              <div class="p_one" @click="huan1">
                <img :src="like.smimg1" alt="">
              </div>
              <div class="p_one" @click="huan2">
                <img :src="like.smimg2" alt="未显示">
              </div>
              <div class="p_one" @click="huan3">
                <img :src="like.smimg3" alt="未显示">
              </div>
              <div class="p_one" @click="huan4">
                <img :src="like.smimg4" alt="未显示">
              </div>
              <div class="p_one" @click="huan5">
                <img :src="like.smimg5" alt="未显示">
              </div>
            </div>
          </div>
          <div class="next" @click="pnext"></div>
        </div>
        <!-- 左侧上下拉动框结束 -->
        <!-- 大图开始 -->
        <div class="bigimage">
          <div class="bigshow">
            <img :src="bgimg" alt="未找到">
          </div>
        </div>
        <!-- 大图结束 -->
        <!-- 右边详情开始 -->
        <div class="dright">
          <h3>{{like.title}}</h3>
          <h4>￥{{like.price}}</h4>
          <div class="kuan">
            <b>款号：</b>{{$route.query.xid}}
          </div>
          <div class="kuan">
            <b>颜色：</b>
            <div class="dcolor">
              <img :src="like.image" alt="">
            </div>
          </div>
          <div class="kuan">
            <b>尺码：</b>
            <div class="dsize">{{like.s1}}</div>
          </div>
          <div class="kuan">
            <b>数量：</b>
            <select name="s" id="selt" class="dsele">
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
            </select>
          </div>
          <div>
            <button type="button" class="but">添加到购物车</button>
          </div>
          <div>
            <button type="button" class="but1">点击直接购买</button>
          </div>
          <div>
            <button type="button" class="but2">添加到心愿单</button>
          </div>  
          <div class="spa"></div>
          <div class="dddesc">
            <div></div>
            <p>
              <b>商品描述：</b>
            </p>
            <div>{{like.pdesc}}</div>
          </div>
          <!-- 尺码 -->
          <div class="dsze">
            <div>
              <div class="dshow xian" :style="dfirst" @click="shsize">
                <img src="../assets/state/jian.svg" alt="">
              </div>
              <div class="dshow2" :style="dsecond" @click="hisize">
                <img src="../assets/state/zeng.svg" alt="">
              </div>
              <p>
                <b>尺码</b>
              </p>
            </div>
            <!-- 尺寸表 -->
            <div class="dsid" :style="stable">
              <table class="dtab">
                <tr>
                  <th>{{like.ts1}}</th>
                  <th>{{like.ts2}}</th>
                  <th>{{like.ts3}}</th>
                  <th>{{like.ts4}}</th>
                  <th>{{like.ts5}}</th>
                </tr>
                <tr class="dld">
                  <td>{{like.s1}}</td>
                  <td>{{like.s2}}</td>
                  <td>{{like.s3}}</td>
                  <td>{{like.s4}}</td>
                  <td>{{like.s5}}</td>
                </tr>
              </table>
            </div>

          </div>
          <div class="dml">
              <p>
                <b>面料说明：</b>
              </p>
              <small>{{like.shuoming}}</small>
          </div>
        </div>
        <!-- 右边详情结束 -->
      </div>
      
    </div>
    <!-- 随机取产品开始 -->
    <div class="random">
      <h4>您可能喜欢</h4>
      <div class="dran">
        <div class="ran_list">
          <div class="ranimg">
            <a href="#">
              <img :src="like.img1" alt="">
            </a>
          </div>
        </div>
        <div class="ran_list">
          <div class="ranimg">
            <a href="#">
              <img :src="like.img2" alt="">
            </a>
          </div>
        </div>
        <div class="ran_list">
          <div class="ranimg">
            <a href="#">
              <img :src="like.img3" alt="">
            </a>
          </div>
        </div>
        <div class="ran_list">
          <div class="ranimg">
            <a href="#">
              <img :src="like.img4" alt="">
            </a>
          </div>
        </div>
        <div class="ran_list">
          <div class="ranimg">
            <a href="#">
              <img :src="like.img5" alt="">
            </a>
          </div>
        </div>
        
        
        
      </div>
    </div>
    <!-- 随机取产品结束 -->
    <el-backtop class="bktop"></el-backtop>
  </div>
</template>
<script>
export default {
  data(){
    return {
      // 保存左侧滚动栏距离('点击动态替换style中top 的值')
      top_gun:'',
      dfirst:'',
      dsecond:'',
      stable:'',
      requesta:'',
      // 保存产品页传过来的产品总数
      counts:0,
      xid:'',
      // 保存随机生成四个id的数组循环出猜您喜欢
      like:{},
      // 保存详情页大图
      bgimg:''
    }
  },
  methods:{
    // 获得传参
    // 封装请求函数
    load(){
      this.axios.get('/pro/'+this.requesta).then(res=>{
        console.log(res.data)
        // console.log(res)
        this.like=res.data;
        console.log(this.like)
        this.bgimg=this.like.bgimg1;
      })
    },
    // 先得到传递过来的产品类别总数，在猜你喜欢随机出五个小于产品总数的数据
    // 根据传过来的产品的xid参数去请求多个与产品相关的详细数据
    getDetail(){
      this.xid=this.$route.query.xid;
      this.counts=this.$route.query.counts;
      // 数据量不够this.requesta= 'random?id='+Math.floor(Math.random()*this.counts);
      this.requesta= 'random?id1='+Math.floor(Math.random()*40)+'&id2='+Math.floor(Math.random()*40)+'&id3='+Math.floor(Math.random()*40)+'&id4='+Math.floor(Math.random()*40)+'&id5='+Math.floor(Math.random()*40)+'&xid='+this.xid;
      this.load();
    },
    ptop(){
      this.top_gun='top:-175px';
    },
    pnext(){
      this.top_gun='';
    },
    shsize(){
      this.dfirst='display:none';
      this.dsecond='display:block';
      this.stable='display:block';
    },
    hisize(){
      this.dfirst='';
      this.dsecond='';
      this.stable='';
    },
    huan1(){
      this.bgimg=this.like.bgimg1;
    },
    huan2(){
      this.bgimg=this.like.bgimg2;
    },
    huan3(){
      this.bgimg=this.like.bgimg3;
    },
    huan4(){
      this.bgimg=this.like.bgimg4;
    },
    huan5(){
      this.bgimg=this.like.bgimg5;
    }
  },
  mounted(){
    this.getDetail();
    console.log(this.$route.query)
  }
}
</script>
<style>
  .container{
    width: 1200px;
    margin: 0px auto;
    min-height: 500px;
    margin-bottom: 30px;
    padding-bottom: 30px;
  }
  .container .productde{
    width: 1200px;
    margin: 0px auto;
    min-height: 100px;
    padding-top: 20px;
    padding-bottom: 30px;
  }
  .bread{padding-top: 10px;}
  .bread a{font-size: 13px;color: #000;}
  .borderh{    
    height: 1px;
    background-color: #9E9E9E;
    margin: 15px 0;
  }
  .container .deban{
    width: 1200px;
  }
  .deban::before,.deban::after{display: table;content:'';}
  .deban::after{clear: both;overflow: hidden;}
  .prodl{
    float: left;
    width: 110px;
    height: 730px;
    margin-right: 20px;
  }
  .pre,.next{
    width: 100%;
    height: 20px;
    cursor: pointer;
  }
  .pre{
    background: url(../assets/state/top.svg) no-repeat center center;
    background-size: 20px 20px;
  }
  .next{
    background: url(../assets/state/next.svg) no-repeat center center;
    background-size: 20px 20px;
  }
  .smalll{
    width: 100%;
    height: 690px;
    overflow: hidden;
    position: relative;
  }
  .p_list{
    position: absolute;
    width: 100%;
    left: 0;
  }
  .dong{transition: all 0.1s ease-in;}
  .p_list .p_one{
    width: 110px;
    height: 165px;
    overflow: hidden;
    margin-bottom: 10px;
    cursor: pointer;
  }
  .p_list .p_one img{
    width: 100%;
    vertical-align: middle;
    border: 0;
    object-fit: contain;
  }
  .bigimage{
    float: left;
    width: 486px;
    height: 730px;
    overflow: hidden;
    margin-right: 0px;
    margin-top: 20px;
    position: relative;
  }
  .bigshow{
    width: 486px;
    height: 730px;
    overflow: hidden;
    position: absolute;
    left: 0px;
    right: 0px;
  }
  .bigshow img{
    height: 100%;
    vertical-align: middle;
    border: 0;
  }
  .dright{
    float: left;
    width: 500px;
    height: 730px;
    padding-left: 30px;
    background: #ffffff;
    margin-top: 20px;
  }
  .dright h3,.dright h4{
    margin-bottom: 10px;
    line-height: 1.1;
  }
  .dright h3{font-size: 24px;}
  .dright h4{font-size: 18px;}
  .kuan{padding: 10px 0;}
  .dright b{font-size: 13px;} 
  .kuan .dcolor{
    border: 1px solid #333;
    display: inline-block;
    width: 31px;
    height: 31px;
    border: 1px solid #c0c0c0;
    margin-right: 8px;
    cursor: pointer;
  }
  .kuan .dcolor img{
    width: 100%;
    vertical-align: middle;
  }
  .kuan .dsize{
    display: inline-block;
    height: 31px;
    padding: 0 5px;
    border: 1px solid #c0c0c0;
    line-height: 30px;
    text-align: center;
    font-size: 12px;
    margin-right: 8px;
    cursor: pointer;
    min-width: 31px;
  }
  .kuan .dsele{
    display: inline-block;
    width: 75px;
    height: 31px;
    border: 1px solid #c0c0c0;
    text-align: center;
    font-size: 12px;
  }
  .but,.but1,.but2{
    width: 100%;
    height: 40px;
    line-height: 40px;
    font-size: 13px;
    text-align: center;
    border: 1px solid #666;
    margin-top: 10px;
  }
  .dright .but{background-color: #000;color: #fff;}
  .dright .but1,.dright .but2{    background-color: #fff;
    color: #333;}
  .dright .spa{
    margin-top: 10px;
  }
  .dright .spa,.dright .dddesc,.dright .dsze,.dright .dml{
    border-bottom: 1px solid #e0e0e0;
    padding: 15px 0;
    position: relative;
    background: #fff;
  } 
  .dright .dddesc p,.dright .dsze p,.dright .dml p{margin-bottom: 10px;}
  .dright .dsze{
    cursor: pointer;
    user-select: none;
  }
  .dright .dml small{font-size: 11px;}
  .dright .dshow,.dright .dshow2{
    position: absolute;
    right: 10px;
    display: none;
  }
  .dshow img,.dshow2 img{
    height: 20px;
    vertical-align: middle;
  }
  .dright .xian{display: block;}
  .dright .dsid{
    display: none;
    width: 100%;
    bottom: 100%;
    background: #fff;
  }
  .dright .dtab{
    width: 100%;
    padding: 0;
    margin-top: 20px;
    border: 1px solid #e2dddd;
    border-spacing: 0;
    border-collapse: collapse;
  }
  .dtab th{text-align: center;height: 30px; font-weight: 700;}
  .dtab .dld{background: #dedede;}
  .dld td{text-align: center;height: 30px;}
  .random{margin-top:30px;}
  .random h4{font-size: 18px;}
  .random .dran{
    display: flex;
    flex-wrap: wrap;
    width: 1200px;
  }
  .random .dran .ran_list{
    width: 150px;
    height: 225px;
    margin: 10px 10px 0 0;
  }
  .random .ran_list .ranimg{width: 100%;height: 100%;}
  .ran_lsit .ranimg img{width: 100%;vertical-align: middle;} 
</style>