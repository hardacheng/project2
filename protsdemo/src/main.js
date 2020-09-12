import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'

import ElementUI from 'element-ui'
import Head from './components/demo/Head.vue'
import Foot from './components/demo/Foot.vue'
import 'element-ui/lib/theme-chalk/index.css'
// 引入 VueAwesomeswiper
import VueAwesomeswiper from 'vue-awesome-swiper'
 // swiper组件引入
import 'swiper/css/swiper.css'
import { swiper, swiperSlide } from 'vue-awesome-swiper'  // 组件样式
// 指定的端口号要和服务器监听的端口号一致
axios.defaults.baseURL = 'http://127.0.0.1:3003'
Vue.prototype.axios = axios; //将axios加入vue原型对象中

// 关闭生产环境消息，防止不必要积累
Vue.config.productionTip = false

import BootstrapVue from 'bootstrap-vue'

Vue.use(BootstrapVue)
Vue.use(ElementUI)
Vue.use(VueAwesomeswiper)
// 引用头部尾部组件
Vue.component('Head',Head);
Vue.component('Foot',Foot);
// 安装引入懒加载组件
import VueLazyload from 'vue-lazyload'
Vue.use(VueLazyload)


new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
