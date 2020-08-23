<template>
  <div>
    
    <!-- 轮播图开始 -->
    <div class="carouse">
        <swiper ref="mySwiper" :options="swiperOptions" class="swiperx">
          <swiper-slide v-for="(i,k) in banList" :key="k">
            <router-link :to="i.tourl" target="_blank">
            <!-- <a :href=""> -->
              <img :src="i.banurl" alt="" class="swiper">
            <!-- </a> -->
            </router-link>
          </swiper-slide>
     <!-- 分页器 -->
          <div class="swiper-pagination" slot="pagination"></div>
        </swiper>
    <!-- 左右组件 -->
        <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
    </div>
    <!-- 轮播图结束 -->
    <!-- 中间内容开始 -->
    <div class="content">
      <!-- 内容页面信息数据库信息已经建立 -->
      <div class="con1">
        <a href="#">
          <img src="../assets/state/cons/content1.jpg" alt="" >
        </a>
      </div>
      <div class="con2">
        <img src="../assets/state/cons/content2.jpg" alt="" >
        <a href="/register" class="area1"></a>
        <a href="/login" class="area2"></a>
      </div>
      <div class="con3">
        <a href="#">
          <img src="../assets/state/cons/content3.jpg" alt="" >
        </a>
      </div>
      <div class="con4">
          <img src="../assets/state/cons/content4.jpg" alt="" >
        <a href="#" alt="woman" class="area3"></a>
        <a href="#" alt="man" class="area4"></a>
      </div>
       <!-- 视频开始 -->
      <div class="vio5">
        <video src="../assets/state/cons/content5.mp4" controls="controls" poster="../assets/state/cons/01094450.jpg"></video>
      </div>
    <!-- 视频结束 -->
      <div class="con6">
          <img src="../assets/state/cons/content6.jpg" alt="" >
        <a href="#" alt="woman" class="area5"></a>
        <a href="#" alt="man" class="area6"></a>
      </div>
    </div>
    <!-- 中间结束 -->
    <!-- 返回顶部 -->
    <el-backtop class="bktop"></el-backtop>
  </div>
</template>

<script>
export default{
  data(){
    return {
      banList:[],
      swiperOptions: {
        pagination: {
          el: '.swiper-pagination',
          // 分页器控制切换
          clickable: true
        },
        // 自动播放
        autoplay:{
          // 1秒时长切换
          delay:8000,
          disableOnInteraction:false
        },
        // 左右按钮
        navigation: {
          nextEl: '.swiper-button-next',
          prevEl: '.swiper-button-prev',
        },
        // 循环
        loop: true
      }
      
    }
  },
  methods:{
    getBannerList(){
      this.axios.get('/pro/bannerList')
      .then(res=>{
        // console.log(res.data)
        this.banList=res.data;
      })
    }
  },
  mounted(){
    this.getBannerList();
    
  }

}
</script>

<style scoped>
  .carouse{
    position:relative;
    width: 1200px;
    /* height: 600px; */
    height: 600px;
    margin: 0 auto;
    padding-top: 5px;
    /* 左右按钮样式 */
    --swiper-theme-color: #000;/* 设置Swiper风格 */
    /* --swiper-navigation-color: #00ff33;单独设置按钮颜色 */
     --swiper-navigation-size: 30px;/*设置按钮大小 */
  }
  .carouse .swiper{
    width: 100%;
    height: 100%;
    object-fit: fill;
  }
   /*样式穿透*/
  .swiperx >>> .swiper-pagination{
    display: inline-block;
    position: absolute;
    z-index: 900;
    top: 50%;
    margin-top: -50px;
    left: 93%;
    text-align: center;
    width: 30px;
    padding: 0 50px 0 30px;
    border-radius: 4px;
  }
 
  .swiperx >>> .swiper-pagination-bullet{
    display: inline-block;
    width: 5px;
    height: 5px;
    margin: 2px 3px 3px 2px !important;
    border-radius: 50%;
    background: #fff;
    cursor: pointer;
    opacity: 1;
  }
  .swiperx >>> .swiper-pagination-bullet-active{
    margin: 5px 0 !important;
    width: 10px;
    height: 10px;
    border: 1px solid #fff;
    background-color: transparent;
    /* background: no-repeat left center; */
  }
  .carouse >>> .swiper-button-prev{
    left: -25px;
    outline: none;
  } 
  .carouse >>> .swiper-button-next{
    right: -25px;
    outline: none;
  } 
  .content{
    width: 1200px;
    margin: 0 auto;
  }
  .content::before,.content::after{
    display: table;
    content: "";
  }
  .content::after{
    clear: both;
    overflow: hidden;
  }
  .content>div{
    position: relative;
  }
  .content .con1 img{
    margin-top: 50px;
  }
  .content>div img{
    display: block;
    max-width: 100%;
    height: auto;
  }
  .area1,.area2,.area3,.area4,.area5,.area6{
    position: absolute;
    z-index: 98;
    display: block;
  }
  .area1{
    left: 0.5%;
    top: 2.2%;
    width: 48%;
    height: 94.8%;
  }
  .area2{
    left: 51.1%;
    top: 3.4%;
    width: 49%;
    height: 93%;
  }
  .area3{
    left: 7.1%;
    top: 14.3%;
    width: 41.4%;
    height: 84.1%;
  }
  .area4{
    left: 51.2%;
    top: 15%;
    width: 37.8%;
    height: 82.2%;
  }
  .area5{
    left: 51.7%;
    top: 14.2%;
    width: 40.9%;
    height: 78.8%;
  }
  .area6{
    left: 4.1%;
    top: 6.7%;
    width: 45.5%;
    height: 90%;
  }
  /* .vio5{
    width: 1200px;
    height: 675px;
   
  } */
  .vio5 video{
    width: 100%;
    display: inline-block;
    object-fit: contain;
    vertical-align: baseline;
  }
</style>
