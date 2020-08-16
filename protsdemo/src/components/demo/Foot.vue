<template>
    <div id="fot">
      <div id="fot_list">
        <div class="fot_item">
          <p>系列推荐</p>
          <a href="#">
            客服服务
          </a>
          <br>
          <a href="#">在线客服</a>
          <br>
          <a>+86.400.886.1961</a>
        </div>
        <div class="fot_item">
          <p>运输及退换货服务</p>
          <a href="#">
            发货与保险服务
          </a>
          <br>
          <a href="#">退换货政策</a>
        </div>
        <div class="fot_item">
          <p>关于我们</p>
          <a href="#">
            店铺分布
          </a>
          <br>
          <a href="#">PORTS 画册</a>
          <br>
          <a href="#">VIP政策</a>
        </div>
        <div class="fot_item">
          <p>关于我们</p>
          <a href="#">
            店铺分布
          </a>
          <br>
          <a href="#">PORTS 画册</a>
          <br>
          <a href="#">VIP政策</a>
        </div>
        <div class="fot_item">
          <p>时尚资讯</p>
          <a href="#">
            媒体焦点
          </a>
          <br>
          <a href="#">名人秀</a>
          <br>
          <a href="#">PORTS名模</a>
        </div>
        <div class="fot_item">
          <p>关注PORTS</p>
          <a href="#">
            微信
          </a>
          <br>
          <a href="#">微博</a>
        </div>
        <div class="fot_item" style="position:relative;">
          <div class="zixun">
            <p>订阅电子资讯</p>
            <input type="email" class="demail">
            <button type="submit" class="btnlst">订阅</button>
          </div>
        </div>
      </div>
      <div style="height:20px;"></div>
      <div class="tongxun">
        <div class="in">
          <a href="#">
            <span><img src="../../assets/tongxun/facebook.png" style="background-color:#fff;"></span>
          </a>
          <a href="#">
            <span><img src="../../assets/tongxun/twitter.png"></span>
          </a>
          <a href="#">
            <span><img src="../../assets/tongxun/pinterest.png"></span>
          </a>
          <a href="#">
            <span><img src="../../assets/tongxun/weibo.png"></span>
          </a>
          <a href="#">
            <span><img src="../../assets/tongxun/wechat.png"></span>
          </a>
        </div>
        <div>
          <p>帮助 | 隐私政策 | Copyright©2018 CPAX Limited闽 | CP备09004573号-1</p>
        </div>
      </div>
    </div>
</template>
<style>
#fot{
  width: 100%;
  background-color: #000;
  padding-top: 30px;
  margin-top: 50px;
}
#fot #fot_list{
  background-color: #000;
  padding-top: 15px;
  width: 1200px;
  position: relative;
  margin: 0px auto;
}
#fot_list:after,#fot_list:before{
  display: table;
  content: "";
}
#fot_list:after{
  clear: both;
  overflow: hidden;
}
#fot_list .fot_item{
  float: left;
  min-width: 150px;
  margin-right: 50px;
  color: rgb(187, 187, 187);
  font-size: 13px;
}
#fot_list .fot_item p{
  color: rgb(255, 255, 255);
  font-size: 14px;
  font-weight: bold;
  margin-bottom: 10px;
}
#fot_list .fot_item a{
  color: #bbbbbb;
  text-decoration: none;
}
.zixun{
  position: absolute;
  top: -70px;
  left: 150px;
  width: 220px;
}
.demail{
  width: 140px;
  border: 0px;
  background-color: #f0f0f0;
  height: 25px;
  color: #000;
  line-height: 25px;
  font-size: 12px;
}
.fot_item .zixun .btnlst{
  border: 0px;
  background-color: #f0f0f0;
  height: 25px;
  color: #000;
  width: 32px;
  font-size: 12px;
  margin-left: 5px;
  padding: 0;
}
.tongxun{
  width: 1200px;
  margin: 0 auto;
  text-align: center;
  font-size: 13px;
  color: #bbbbbb;
}
.in a{
  height: 18px;
  margin: 0 5px;
}
.in,.tongxun p{
  padding:0 0 10px;
  margin: 0;
}

</style>