<template>
  <div id="head">
    <div id="head1">
      <div id="left">
        <span>
          <a href="/">English |</a>&nbsp;
          <a href="/">中文</a>
        </span>
        <span style="margin-left:30px">
          <a href="/">客户服务</a>
        </span>
      </div>
      <div id="middle">
        <a href="/">
          <img src="../../assets/state/ports.svg" height="50">
        </a>
      </div>
      <div id="right">
        <span>
          <a href="/login">登录/注册</a>
        </span>
        <span style="margin-left:50px;position:relative" @mouseover="ph1()" @mouseout="ph2()">
          手机版
          <div :style="dip" class="ph" @mouseout="ph2()">
            <img src="../../assets/state/intl.jpg" height="80">
          </div>
        </span>
        <span style="margin-left:50px"  @mouseover="sho1()" @mouseout="sho2()">
          购物袋{{count}}
          <div class="shop1" :style="dia"  @mouseout="sho2()">
            <div class="sho">
              <div class="shotop"></div>
              <div class="til">购物袋</div>
              <div class="sholist"></div>
              <div class="sho_tot">商品数量：0</div>
              <div class="op">
                <a href="#" class="bb">查看购物袋</a>
              </div>
              <div class="op">
                <a href="#" class="wb">前往结算</a>
              </div>
            </div>
          </div>
        </span>
        <span class="sousuo" style="margin-left:50px" @mouseover="sou()">
          搜索
          <div  class="search" :style="dis" @mouseout="sou2()">
            <form action="/" method="">
              <button type="submit"></button>
              <input type="text" placeholder="请输入要搜索的内容">
            </form>
          </div>
          
        </span>
      </div>
      <div class="list" @mouseover="showList" @mouseout="hideList">
        <span>女装</span>
        <span>男装</span>
        <span>时尚资讯</span>
        <span>配饰</span>
        <span>关于我们</span>
      </div>
    </div>
    <div id="select" @mouseover="showList" @mouseout="hideList" :class="{show:showText,hide:hideText}">
      <div id="select_biao" style="padding-left:214px">
        <div class="select_list">
          <p class="title texiao">女装</p>
          <p><a href="#">Ports International 女装</a></p>
          <p><a href="#">PORTS 1961 女装</a></p>
          <p><a href="#">PORTSPURE</a></p>
        </div>
        <div class="select_list">
          <p class="title texiao">男装</p>
          <p><a href="#">Ports International 男装</a></p>
          <p><a href="#">PORTS 1961 男装</a></p>
          <p><a href="#">PORTSV</a></p>
        </div>
        <div class="select_list">
          <p class="title texiao">时尚资讯</p>
          <p><a href="#">每周推荐</a></p>
          <p><a href="#">明星同款</a></p>
          <p><a href="#">秀场同款</a></p>
        </div>
        <div class="select_list">
          <p class="title texiao">配饰</p>
          <p><a href="#">PORTS 1961</a></p>
          <p><a href="#">女士配饰</a></p>
          <p><a href="#">男士配饰</a></p>
        </div>
        <div class="select_list">
          <p class="title texiao">关于我们</p>
          <p><a href="#">画册</a></p>
          <p><a href="#">VIP政策</a></p>
        </div>
      </div>
    </div>
  </div>
</template>
<style>
#head {
  margin: 0 auto;
  width: 1200px;
  height: 120px;
  position: relative;
  z-index: 999;
}
#head1 {
  font-size: 13px;
  padding: 15px 0 10px;
  height: 120px;
}
#head a {
  display: inline-block;
  color: #262626;
  text-decoration: none;
}
#left {
  position: absolute;
  z-index: 99;
  left: 0px;
  top: 15px;
  width: 250px;
  height: 40px;
  color: rgb(224, 224, 224);
  font-size: 12px;
  font-weight: bold;
  padding-left: 10px;
}
#middle {
  position: absolute;
  z-index: 10;
  top: 15px;
  width: 100%;
  left: 0px;
  right: 0px;
  text-align: center;
}
#right span {
  display: inline-block;
  height: 20px;
  line-height: 20px;
}

#right {
  position: absolute;
  z-index: 99;
  right: 0px;
  top: 15px;
  width: auto;
  height: 40px;
  font-size: 12px;
  font-weight: bold;
  padding-right: 10px;
}
.shop1{
  position: absolute;
  z-index: 99;
  top: 35px;
  right: 60px;
  background: #fff;
  box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.3);
}
.sho{
  position: relative;
  width: 280px;
  color: #333;
}
.shotop{
  position: absolute;
  right: 25px;
  top: -10px;
  width: 0;
  height: 0;
  border-width: 0 10px 10px;
  border-style: solid;
  border-color: transparent transparent #fff;
}
.til{
  width: 100%;
  height: 40px;
  line-height: 40px;
  text-align: center;
  font-size: 15px;
  border-bottom: 1px solid #e3e3e3;
}
.sholist{
  max-height: 425px;
  overflow-y: auto;
}
.sho_tot{
  width: 100%;
  height: 45px;
  line-height: 45px;
  text-align: center;
  font-size: 15px;
  font-style: italic;
  margin: 0 0 10px 0;
  padding: 0 15px;
  border-bottom: 1px solid #f3f3f3;
  color: #4B4B4B;
}
.op{
  width: 100%;
  height: 45px;
  padding: 0 0 10px 0;
  text-align: center;
  font-size: 14px;
}
.bb,.wb{
  display: inline-block;
  width: 90%;
  height: 35px;
  line-height: 31px;
}
.bb{
  background: #1B1B1B;
  color: #E5DFD9 !important;
}
.wb{
  background: #fff;
  color: #1B1B1B !important;
  border: 2px solid #1B1B1B;
}
.ph{
  position: absolute;
  top: 22px;
  left: -20px;
}
#right .sousuo{
  position: relative;
  margin-left: 30px;
  display: inline-block;
  height: 20px;
  line-height: 20px;
}
#right .search{
  position: absolute;
  z-index: 98;
  width: 380px;
  height: 30px;
  top: 30px;
  right: 0;
}
#right button{
  float: right;
  border: 0px;
  height: 24px;
  width: 29px;
  padding-left: 5px;
  background: url('../../assets/state/search.png') no-repeat center center #999;
  background-size: 16px 16px;
}
#right input{
  float: right;
  width: 305px;
  height: 24px;
  padding: 0 5px;
  color: #000;
  border-bottom: 1px solid #828282;
  border-top: 0px solid #000;
  border-left: 0px solid #000;
  border-right: 0px solid #000;
}

.list{
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  position: absolute;
  bottom: 0px;
  width: 100%;
}
.list>span{
  width: 135px;
  text-align: center;
  cursor: pointer;
  padding: 10px;
}
#select{
  width: 100%;
  background-color: rgb(240, 240, 240);
  opacity: 0.95;
  height: 350px;
  position: absolute;
  top: 100%;
  border-bottom-width: 1px;
  border-bottom-style: solid;
  border-bottom-color: rgb(224, 224, 224);
}
#select_biao{
  padding-top: 25px;
  padding-bottom: 25px;
  width: 1200px;
  position: relative;
  margin: 0px auto;
}
#select_biao .select_list{
  float: left;
  min-width: 130px;
  margin-right: 33px;
  color: rgb(0, 0, 0);
  font-size: 13px;
}
.title{
  font-size: 14px;
  font-weight: bold;
  margin-bottom: 20px;
  border-bottom-width: 3px;
  border-bottom-style: solid;
  width: 60px;
}
.texiao{
  transition: all 0.1s ease-in;
  border-bottom-color: #000 !important;
}
a:hover{color: #337ab7 !important;}
.show{display: block;}
.hide{display: none;}
</style>
<script>
export default {
  data() {
    return {
      count: "",
      // 添加各个选项卡的显示隐藏状态
      showText:false,
      hideText:true,
      dis:'display:none',
      dip:'display:none',
      dia:'display:none',
    };
  },
  mounted(){
    
  },
  methods: {
   showList(){
      this.showText=!this.showText;
      this.hideText=!this.hideText;
   },
   hideList(){
      this.showText=!this.showText;
      this.hideText=!this.hideText;
   },
   sou(){
     this.dis='display:block';
   },
   sou2(){
     this.dis='display:none';
   },
   ph1(){
     this.dip='display:block';
   },
   ph2(){
     this.dip='display:none';
   },
   sho1(){
     this.dia='display:block';
   },
   sho2(){
     this.dia='display:none';
   },
  }
};
</script>  