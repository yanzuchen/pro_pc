import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
//1.引入全局组件.vue文件
import MyHeader from './components/myHeader'
//2.将MyHeader组件对象变成了全局组件
Vue.component("my-header",MyHeader);
//结果：在当前项目中任何位置都可以使用<my-header>引入页头

import MyFooter from './components/myFooter'
Vue.component("my-footer",MyFooter);


import axios from "axios"
axios.defaults.baseURL="http://localhost:5050"
Vue.prototype.axios=axios;


Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
