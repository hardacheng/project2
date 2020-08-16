import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import qs from 'qs'
import ElementUI from 'element-ui'
import Head from './components/demo/Head.vue'
import Foot from './components/demo/Foot.vue'
import 'element-ui/lib/theme-chalk/index.css'
// 指定的端口号要和服务器监听的端口号一致
axios.defaults.baseURL = 'http://127.0.0.1:3003'
Vue.prototype.axios = axios; //将axios加入vue原型对象中

// 关闭生产环境消息，防止不必要积累
Vue.config.productionTip = false

import BootstrapVue from 'bootstrap-vue'

Vue.use(BootstrapVue)
Vue.use(ElementUI)
// 引用头部尾部组件
Vue.component('Head',Head);
Vue.component('Foot',Foot);

import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
