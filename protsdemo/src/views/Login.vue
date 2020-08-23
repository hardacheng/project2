<template>
  <div style="background-color:#f9f9f9">
    <el-backtop class="bktop"></el-backtop>
    <!-- 左边 -->
    <el-row>
      <div class="top1">
        <h2>登录</h2>
      </div>
      <el-col :span="24">
        <el-col :span="12">
          <div class="left">
            <label>手机号码/电子邮箱</label>
            <div class="inpd">
              <input
                type="text"
                class="inp"
                v-model="phone"
                autocomplete="off"
                @input="ph_check"
                placeholder="请输入手机号码/电子邮箱"
              />
              <img :src="msg" />
            </div>
            <div>
              <label>密码</label>
              <div class="inpd">
                <input
                  type="password"
                  v-model="password"
                  class="inp"
                  autocomplete="off"
                  placeholder="请输入密码"
                />
                <img :src="msg2" />
              </div>
            </div>
            <div>
              <button id="bt" class="login" @click="log_check">登录</button>
            </div>
            <p style="margin-top:15px;font-size:13px">登录至“我的账户-个人信息管理”绑定手机，尊享便捷登录</p>
            <p class="p">
              <a
                target="_blank"
                href="/"
                style="text-decoration:none;color:#333333;font-weight:700"
              >忘记密码</a>
            </p>
          </div>
        </el-col>

        <!-- 右边 -->
        <el-col :span="12">
          <div class="left">
            <h3>没有账号</h3>
            <p>如果你还是不是Ports-intl.com 用户， 请在此注册</p>
            <div>
              <router-link to="/register">
                <button class="register">免费注册</button>
              </router-link>
            </div>
            <p style="margin-top:15px">
              请注册后进入“我的账户”绑定您的VIP卡卡号
              <br />PORTS贵宾俱乐部成员在分店和网站均可尊享同等优惠
            </p>
          </div>
        </el-col>
      </el-col>
    </el-row>
  </div>
</template>
<style>
.bktop {
  color: #000 !important;
  background-color: #f9f9f9 !important;
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
.register,
.login {
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
.p {
  display: block;
  width: 320px;
  font-size: 12px;
  text-align: center;
}
</style>
<script>
import qs from "qs";
export default {
  data() {
    return {
      password: "",
      phone: "",
      msgArr: ["stat.png", "success.png", "err.png"],
      msgIndex: 0,
      msgIndex2: 0,
      state: "",
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
        this.msgIndex = 1;
        // 设定一个状态值state来返回验证成功状态，为注册验证时做准备
        this.state = true;
      } else {
        this.msgIndex = 2;
        // 如果验证电话失败
        this.state = false;
      }
    },

    // 登录验证
    log_check() {
      // 如果电话验证成功且密码不为空则允许登录
      if (this.state && this.password) {
        // 当电话和密码都验证成功后发送post请求
        this.axios
          .post(
            "/user/login",
            qs.stringify({
              phone: this.phone,
              password: this.password,
            })
            // "phone=" + this.phone + "&password=" + this.password
          )
          .then((res) => {
            // console.log(res.data, typeof res.data);
            //注册成功后跳转首页，否则
            if (res.data == 1) {
              this.$router.push("/");
            } else {
              window.alert("用户名或密码错误");
              location.reload();
            }
          });
      } else {
        window.alert("请输入合法的电话号码及密码");
        location.reload();
      }
    },
  },
};
</script>