<template>
  <div style="background-color:#f9f9f9">
    <el-backtop class="bktop"></el-backtop>
    <!-- 左边 -->
    <el-row>
      <div class="top1">
        <h2>注册</h2>
      </div>
      <el-col :span="24">
        <el-col :span="12">
          <div class="left">
            <label>
              手机号码
              <span class="must">*</span>
            </label>
            <div class="inpd">
              <input type="text" class="inp" v-model="phone" autocomplete="off" @input="ph_check" />
              <img :src="msg" />
            </div>
            <div>
              <label>
                图形验证码
                <span class="must">*</span>
              </label>
              <div class="inpd">
                <input type="text" class="inp" style="width:150px" autocomplete="off" />
              </div>
            </div>
            <div>
              <label for="shouji">
                手机验证码
                <span class="must">*</span>
              </label>
              <div class="inpd">
                <input type="text" class="inp" style="width:150px" autocomplete="off" />
              </div>
              <div class="fr">
                <div type="button" class="anniu">发送验证码</div>
              </div>
            </div>
            <div>
              <label>
                设置密码
                <span class="must">*</span>
              </label>
              <div class="inpd">
                <input
                  type="password"
                  v-model="password"
                  class="inp"
                  autocomplete="off"
                  @input="pwd_check"
                  placeholder="密码为8-20位数字及字母"
                />
                <img :src="msg2" />
              </div>
            </div>
            <div>
              <label for="username">
                姓
                <span class="must">*</span>
              </label>
              <div class="inpd">
                <input type="text" class="inp" v-model="wname" autocomplete="off" />
              </div>
            </div>
            <div>
              <p>
                <label style="margin-right:20px">
                  性别
                  <span class="must">*</span>
                </label>
                <label for="gender0">女士</label>
                <input
                  type="radio"
                  name="gender"
                  value="0"
                  id="gender0"
                  v-model="genderx"
                  style="margin-right:20px"
                />
                <label for="gender1">男士</label>
                <input type="radio" name="gender" value="1" id="gender1" v-model="genderx" />
              </p>
            </div>
            <div>
              <button id="bt" class="register" @click="reg_check">注册</button>
            </div>
            <p style="margin-top:15px;font-size:1px">
              PORTS尊重并保护本网所有用户的个人隐私权，
              <br />您的个人资料仅会被PORTS集团旗下品牌所共享。
              <br />
              <a target="_blank" href="/" style="text-decoration:none;color:#333333">点击隐私政策查阅更多详情</a>
            </p>
          </div>
        </el-col>

        <!-- 右边 -->
        <el-col :span="12">
          <div class="left">
            <h3>已拥有账号</h3>
            <p>如果你已经是Ports-intl.com 用户， 请在此登录</p>
            <div>
              <router-link to="/login">
                <button class="login">登录</button>
              </router-link>
            </div>
            <p style="margin-top:15px">
              我已经是PORTS的用户请登录后进入“我的账户”
              <br />绑定您的VIP卡卡号,PORTS贵宾俱乐部成员在分店
              <br />和网站均可尊享同等优惠
            </p>
          </div>
        </el-col>
      </el-col>
    </el-row>
  </div>
</template>
<style>
.bktop {
  color: white !important;
  background-color: block !important;
}
.el-row {
  width: 1200px;
  background-color: #f9f9f9;
  margin: 0 auto;
}
.top1 {
  border-bottom: 1px solid #9e9e9e;
  padding: 20px 0 10px;
  margin-bottom: 20px;
  text-align: center;
}
.left {
  text-align: left !important;
  width: 600px;
  height: 540px;
  padding: 0 15px 0 100px;
  font-size: 12px;
  color: #333333;
}
label {
  max-width: 100%;
  font-weight: 700;
}
.must {
  color: #f00;
}
.inpd {
  margin-bottom: 15px;
}
.inp {
  background-color: #fff;
  width: 320px;
  height: 35px;
  line-height: 350px;
  font-size: 12px;
  padding: 5px;
  border: 1px solid #666;
  margin-right: 10px;
}
.fr {
  float: right;
}
.anniu {
  height: 35px;
  width: 100px;
  margin: -50px 200px 0 0;
  text-align: center;
  background-color: #000;
  color: #fff;
  border: 1px solid #666;
  line-height: 35px;
  cursor: pointer;
}
.login,
.register {
  background-color: #000;
  color: #fff;
  width: 320px;
  height: 35px;
  line-height: 35px;
  font-size: 13px;
  text-align: center;
  border: 1px solid #666;
  cursor: pointer;
}
</style>
<script>
export default {
  data() {
    return {
      wname: "",
      password: "",
      phone: "",
      msgArr: ["stat.png", "success.png", "err.png"],
      msgIndex: 0,
      msgIndex2: 0,
      genderx: "",
      state: 0,
      state2: 0,
    };
  },
  computed: {
    msg: function () {
      return require(`../assets/state/${this.msgArr[this.msgIndex]}`);
    },
    msg2: function () {
      return require(`../assets/state/${this.msgArr[this.msgIndex2]}`);
    },
  },
  methods: {
    // 获取电话号码、密码、用户名
    // 验证电话号码
    ph_check() {
      let phoneRegExp = /^1[3-9]\d{9}$/;
      if (phoneRegExp.test(this.phone)) {
        // 发送get请求验证数据库phone是否唯一
        this.axios.get("/user/check?phone=" + this.phone).then((res) => {
          // console.log(res.data,typeof res.data);
          // 返回1表示数据库没有这个号码，否则表示有相同号码
          if (res.data == 1) {
            this.msgIndex = 1;
            // 设定一个状态值state来返回验证成功状态，为注册验证时做准备
            this.state = true;
          } else {
            this.msgIndex = 2;
            this.state = false;
          }
        });
      } else {
        this.msgIndex = 2;
        // 如果验证电话失败下面的程序不执行
        this.state = false;
      }
    },
    // 验证密码
    pwd_check() {
      let pwdRegExp = /^[0-9A-Za-z]{8,20}$/;
      if (pwdRegExp.test(this.password)) {
        this.msgIndex2 = 1;
        this.state2 = true;
      } else {
        this.msgIndex2 = 2;
        this.state2 = false;
      }
    },
    // 注册验证
    reg_check() {
      // 如果电话和密码都验证成功且用户名不为空则允许注册
      // console.log(this.genderx, typeof this.genderx);
      // console.log(this.wname);
      // console.log(this.state,typeof this.state);
      // console.log(this.state2);
      if (this.state && this.state2 && this.wname && this.genderx) {
        // 当电话和密码都验证成功后发送post请求
        this.axios
          .post(
            "/user/register",
            "wname=" +
              this.wname +
              "&password=" +
              this.password +
              "&phone=" +
              this.phone +
              "&gender=" +
              this.genderx
          )
          .then((res) => {
            // console.log(res.data, typeof res.data);
            //注册成功后跳转首页，否则
            this.$router.push("/");
          });
      } else {
        window.alert("注册失败");
        location.reload();
      }
    },
  },
};
</script>