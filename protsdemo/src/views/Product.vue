<template>
  <div>
    <!-- 顶栏 -->
    <div class="ding">
      <div class="select">
        <div class="slist">
          <table>
            <tr>
              <td>
                <a href="#">最新上线</a>
              </td>
              <td>
                <a href="#">连衣裙</a>
              </td>
              <td>
                <a href="#">夹克</a>
              </td>
              <td>
                <a href="#">毛皮制品</a>
              </td>
            </tr>
            <tr>
              <td>
                <a href="#">lsabella by Ports</a>
              </td>
              <td>
                <a href="#">衬衫</a>
              </td>
              <td>
                <a href="#">半身裙</a>
              </td>
              <td>
                <a href="#">羽绒/棉外套</a>
              </td>
            </tr>
            <tr>
              <td>
                <a href="#">奢华系列</a>
              </td>
              <td>
                <a href="#">上衣</a>
              </td>
              <td>
                <a href="#">裤装</a>
              </td>
              <td>
                <a href="#">特惠专区</a>
              </td>
            </tr>
            <tr>
              <td>
                <a href="#">职场甄选</a>
              </td>
              <td>
                <a href="#">针织衫</a>
              </td>
              <td>
                <a href="#">外套</a>
              </td>
              <td>
                <a href="#">情人节甄选</a>
              </td>
            </tr>
          </table>
        </div>
      </div>
    </div>
    <!-- 产品区 -->
    <div id="product">
      <!-- 分页器 -->
      <div class="fenye">
        <!-- 分页可能只有自己写了， -->
        <ul class="fen_list" v-if="pagecount<=7">
          <li :class="prex" @click="prel()">＜ Previous</li>
          <li v-for="v of pagecount" :key="v" @click="vgo(v)" :class="vst" >{{v}}</li>
          <li :class="nextx" @click="nextr()">Next ＞</li>
          <li>
            <input type="text" class="jinput" autocomplete="off" placeholder="页" v-model="goval">
            <input type="button" class="binput"  value="GO" @click="go">
          </li>
        </ul>
        <!-- 》7 -->
        <!-- <ul class="fen_list" v-else>
          <li :class="prex" @click="prel()">＜ Previous</li>
          <li v-for="v of pagecount" :key="v" @click="vgo(v)" :class="vst" >{{v}}</li>
         
           <li disabled><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#"><span>4</span></a></li>
          <li><a href="#">5</a></li>
          <li><a href="#">6</a></li>
          <li><a href="#">7</a></li>
          <li><a href="#">...</a></li>
          <li><a href="#">50</a></li>
          <li><a href="#">51</a></li> 
          <li class="nextx" @click="nextr()">Next ＞</li>
          <li>
            <input type="text" class="jinput" placeholder="页" autocomplete="off" v-model="goval">
            <input type="button" class="binput"  value="GO" @click="go">
          </li>
        </ul> -->
        <!-- <div class="block">
          <span class="demonstration"></span>
          <el-pagination layout="prev, pager, next" :total="50"></el-pagination>
        </div> -->

        <!-- <div class="block">
          <span class="demonstration">大于 7 页时的效果</span>
          <el-pagination layout="prev, pager, next" :total="100"></el-pagination>
        </div> -->
      </div>
    
      <!-- 根据价格区间筛选商品 ，根据输入的区间查询符合这个区间的产品拿到数据循环出来-->
      <div class="sprice">
        <div>
          <span class="dizeng" @click="dizeng">
            价格从低到高
            <img src="../assets/state/dizeng.svg" alt="">
          </span>
          <span class="dijian" @click="dijian">
            价格从高到低
            <img src="../assets/state/dijian.svg" alt="">
          </span>
          <span>
            价格区间:
            <input type="text" id="p_min" autocomplete="off">
            至
            <input type="text" id="p_max" autocomplete="off">
            <button type="submit" class="btn_p" @click="interval()">筛选</button>
          </span>
        </div>
      </div>
    
      <!-- 商品 -->
      <div class="productlist">
        <div class="prod" v-for="(v,k) in imagelist" :key="k">
          <div class="prod_p">
            <!-- 声明式传参 -->
            <router-link :to="{path:'/detail',query:{xid:v.xid,counts:counts}}" target= '_blank' >
              <div class="prod_a" style="display: block;">
                  <img :src="v.image1" alt />
              </div>
              <!-- <div class="prod_b" :style="imgb" @mouseout="imgChange2">
                  <router-link to="">
                    <img :src="v.image2" alt="">
                  </router-link>
              </div>-->
              <!-- 用hover来切换两张图片对应的div的显示隐藏 -->
              <div class="prod_b" style="display: none;">
                    <img :src="v.image2" alt="">
              </div>
            </router-link>
          </div>
          <div class="prod_t">
            <b>{{v.title}}</b>
            <br />
            ￥{{v.price}}
          </div>
        </div>
      </div>
       <div class="fenye">
        <!-- 分页可能只有自己写了， -->
        <ul class="fen_list" v-if="pagecount<=7">
          <li :class="prex" @click="prel()">＜ Previous</li>
          <li v-for="v of pagecount" :key="v" @click="vgo(v)" :class="vst" >{{v}}</li>
          <li :class="nextx" @click="nextr()">Next ＞</li>
          <li>
            <input type="text" class="jinput" autocomplete="off" placeholder="页" v-model="goval">
            <input type="button" class="binput"  value="GO" @click="go">
          </li>
        </ul>
      </div>
    </div>
    <el-backtop class="bktop"></el-backtop>
  </div>
</template>
<script>
export default {
  data() {
    return {
      imagelist: [],
      // 当前产品总页数
      pagecount:0,
      // 当前产品总数
      counts:0,
      // 每页数量
      pagesize:20,
      // imga:'display:block',
      // imgb:'display:none'
      prox:'',
      p_min:0,
      p_max:0,
      prex:'',
      nextx:'',
      goval:'',
      // 选中页码的class值
      vst:'',
      // 当前页码
      page:1,
      // 保存每个产品对应的跳转详情链接
      pdetailx:''
    };
  },
  methods: {
    // 获取一页数据
    getImagelist() {
      this.axios.get("/pro/products").then(res => {
        // console.log(res.data);
        this.imagelist = res.data.result;
        // 获得当前产品总页数
        this.pagecount=res.data.pagecount;
        // 当前产品总数
        this.counts= res.data.counts;
        // console.log(this.counts);

      });
    },

    // 封装一个axios发送get请求的函数
    requestx(){
      this.axios.get('/pro/'+this.prox).then(res=>{
        // console.log(res.data);
        this.imagelist=res.data;
      })
    },

    // 上一页
    prel(){
      if(this.page==1){
        this.prex='disabled';
      }else{
        this.page-=1;
        this.prox='/prel?page='+this.page+'&pagesize='+this.pagesize;
        this.requestx();
      }
      
    },
    // 下一页
    nextr(){
      if(this.page==this.pagecount){this.nextx='disabled';
      }else{
        this.page+=1;
        this.prox='/nextr?page='+this.page+'&pagesize='+this.pagesize;
        this.requestx();
      }
    },
    // 点击某一页
    vgo(v){
      this.page=v;
      this.prox='/pagev?page='+this.page+'&pagesize='+this.pagesize;
      this.requestx();
    },
    // 搜索某一页
    go(){
      this.page=parseInt(this.goval);
      // console.log(parseInt(this.goval));
      this.prox='/pagev?page='+this.page+'&pagesize='+this.pagesize;
      this.requestx();
      this.goval='';
    },
    // 价格递增
    dizeng(){
      this.prox='dizeng';
      this.requestx();
    },
    // 价格递减
    dijian(){
      this.prox='dijian';
      this.requestx();
    },
    // 价格区间
    interval(){
      // console.log(document.getElementById('p_min').value)
      // console.log(document.getElementById('p_max').value)
      this.p_min=document.getElementById('p_min').value;
      this.p_max=document.getElementById('p_max').value;
      this.prox='interval?min='+this.p_min+'&max='+this.p_max;
      this.requestx();
    },
    
    // imgChange(){
    //   this.imga='display:none';
    //   this.imgb='display:block';
    // },
    // imgChange2(){
    //   this.imga='display:block';
    //   this.imgb='display:none';
    // }
  },
  mounted() {
    this.getImagelist();
    if(this.page==1){this.prex='disabled';};

    // this.getCount();
  },
  watch:{
    // 监听页码变化从而调整前进后退的禁用情况（因为v-model不支持li元素，所以放弃）
    page(){
      if(this.page==1){
        this.prex='disabled';
        this.nextx='';
      }else if(this.page==this.pagecount){
        this.nextx='disabled';
        this.prex='';
      }
    }
  }
};
</script>
<style scoped>
  .disabled{
    /* 不可点击 */
    /* pointer-events: none; */
    /* 光标禁用 */
    cursor: not-allowed;
    opacity:0.6;
  }
  .ding {
    width: 100%;
    background-color: #f0f0f0;
  }
  .ding .select {
    width: 1200px;
    margin: 0px auto;
    padding-top: 20px;
    padding-bottom: 20px;
  }
  .ding .select .slist {
    width: 800px;
    margin: 0px auto;
    display: flex;
    flex-wrap: wrap;
    font-size: 12px;
    color: #afafaf;
    min-height: 50px;
  }
  .slist table {
    display: flex;
  }
  .slist table tr {
    display: block;
  }
  .slist table tr td {
    display: block;
    width: 180px;
    margin-left: 20px;
    padding-left: 65px;
    color: #c0c0c0;
    line-height: 30px;
  }
  .slist table tr td a {
    color: #000;
  }
  #product {
    width: 1200px;
    margin: 0px auto;
    min-height: 500px;
    margin-bottom: 30px;
    padding-bottom: 30px;
  }
  #product .fenye {
    width: 1200px;
    margin: 0px auto;
    text-align: center;
    min-height: 35px;
  }
   #product .fenye .fen_list{
    display: inline-block;
    padding-left: 0;
    margin: 20px 0;
    border-radius: 4px;
   }
   .fen_list>li{display: inline;}
   .fen_list>li:first-child{
    margin-left: 0;
    border-top-left-radius: 4px;
    border-bottom-left-radius: 4px;
   }
   .fen_list>li:hover{
    z-index: 3;
    color: #23527c;
    background-color: #eee;
    border-color: #ddd;
   }
   /* .fen_list>li.active{
    z-index: 2;
    color: #fff;
    cursor: default;
    background-color: #333;
    border-color: #333;
   } */
   .fen_list>li,.fen_list>li>span{
    position: relative;
    float: left;
    padding: 6px 12px;
    line-height: 1.4;
    color: #000;
    text-decoration: none;
    background-color: #fff;
    border: 0px solid #ddd;
   }
   
   /* 选中的状态 */
   .fen_list>li:active{
    z-index: 2;
    color: #fff;
    cursor: default;
    background-color: #333;
    border-color: #333;
   }
   
   .fen_list>li>.jinput,.fen_list>li>.binput{
    /* font-size: 13px; */
    position: relative;
    float: left;
    width: 30px;
    height: 30px;
    line-height: 30px;
    text-align: center;
    /* outline: none;
    cursor: pointer; */
   }
   .fen_list>li>.jinput{
    margin-left: 50px;
    color: #333333;
    border: 1px solid #555555;
    background-color: #fff;
   }
   .fen_list>li>.binput{
    color: #fff;
    margin-left: 1px;
    background-color: #333;
    padding: 0;
    border: 0;
   }
  .sprice {
    margin: 0 auto;
    width: 1000px;
    text-align: center;
    height: 45px;
    line-height: 45px;
    border-bottom: 1px solid #e0e0e0;
    border-top: 1px solid #e0e0e0;
    margin-bottom: 15px;
    font-size: 12px;
  }
  .productlist {
    width: 1000px;
    margin: 0px auto;
    min-height: 100px;
    display: flex;
    flex-wrap: wrap;
    padding-left: 0px;
  }
  .productlist::after,
  .productlist::before {
    display: table;
    content: "";
  }
  .productlist::after {
    clear: both;
    overflow: hidden;
  }
  .prod {
    width: 249px;
    text-align: center;
    margin-bottom: 20px;
  }
  .prod .prod_p {
    display: inline-block;
    width: 210px;
    height: 315px;
    overflow: hidden;
    position: relative;
  }
  .prod .prod_p .prod_a,.prod .prod_p .prod_b {
    width: 210px;
    height: 315px;
    position: absolute;
    left: 0;
    top: 0;
  }
  .prod .prod_p .prod_a{z-index:2;}
  .prod .prod_p .prod_b{z-index:1;}
  /* .prod .prod_p .prod_a{display: block;} */
  /* .prod .prod_p .prod_b{display: none;z-index: 1;} */
  /* .prod_a:hover{display: none !important;}
  .prod .prod_p .prod_a:hover+.prod_b{display: block !important;} */
  .prod .prod_p .prod_a img,.prod .prod_p .prod_b img {
    width: 210px;
    display: block;
    height: auto;
  }
  .prod_t {
    display: inline-block;
    width: 210px;
    line-height: 20px;
    text-align: left;
    font-size: 12px;
    padding-top: 5px;
  }
  /* .prod_t b {
     font-weight: 700; 
  } */
  .product .sprice{
    margin: 0 auto;
    width: 1000px;
    height: 45px;
    line-height: 45px;
    text-align: center;
    border-bottom: 1px solid #e0e0e0;
    border-top: 1px solid #e0e0e0;
    margin-bottom: 15px;
    font-size: 12px;
  }
  .sprice span{padding: 0 40px 0;}
  .sprice .dizeng,.sprice .dijian{cursor: pointer;}
  .sprice .dizeng img,.sprice .dijian img{width: 20px;}
  .sprice input{
    width: 50px;
    height: 25px;
    line-height: 25px;
    color: #333333;
    background-color: #fff;
    border: 1px solid #e0e0e0;
    margin-left: 10px;
    padding: 0 2px;
  }
  .sprice .btn_p{
    display: inline-block;
    width: 40px;
    height: 25px;
    color: #333;
    background-color: #e0e0e0;
    border: 1px solid #e0e0e0;
    line-height: 5px;
    padding: 6px 7px;
    text-align: center;
    font-size: 12px;
    outline: none;
    margin-left: 5px;
    /* white-space: nowrap; */
    /* vertical-align: middle; */
  }
</style>>
