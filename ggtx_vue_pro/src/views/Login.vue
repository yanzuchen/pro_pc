<template>
  <body>
    <div class="top">
      <i>欢迎进入广供天下商城管理平台</i>
      <span>
        <router-link to="/">返回首页</router-link>
        <router-link to="register">新用户注册</router-link>
        <router-link to="/">关于</router-link>
      </span>
    </div>

    <div class="loginBox">
      <img src="/img/loginleft.jpg" class="loginleft" />
      <form id="loginForm">
        <h3>广供天下商城登录 <i>UserLogin</i></h3>
        <span class="myline">
          <input
            class="input2"
            type="text"
            placeholder="2-16位用户姓名或电话号码"
            v-model="uname"
            @blur="checkUname"
            :class="{ isSuccess: unameStateS, isError: unameStateE }"
          />
        </span>
        <span class="myline">
          <input
            class="input3"
            type="text"
            placeholder="3-16位密码"
            v-model="upwd"
            @blur="checkUpwd"
            :class="{ isSuccess: upwdStateS, isError: upwdStateE }"
          />
        </span>
        <span class="myline">
          <a
            class="button"
            style="
              width: 140px;
              height: 36px;
              background: #4098ca;
              color: #fff;
              border-radius: 5px;
            "
            ><span class="button-left" style="margin-top: 3px"
              ><span class="button-text" @click="login">登录</span></span
            ></a
          >
          <a href="#" style="margin-left: 96px; color: #687f92">忘记密码？</a>
        </span>
      </form>
    </div>

    <div class="bot">
      四川省广供天下电子商务有限公司 Copyright © 2000-2019 版权所有 &nbsp;
      技术支持：0839-3267173
    </div>
  </body>
</template>
<script>
import qs from "qs";
export default {
  data() {
    return {
      uname: "",
      upwd: "",
      unameStateS: null,
      unameStateE: null,
      upwdStateS: null,
      upwdStateE: null,
    };
  },
  methods: {
    checkUname() {
      let unameRegExp = /^[0-9a-zA-Z\u4e00-\u9fa5]{2,16}$/;
      let phoneRegExp = /^1[34578]\d{9}$/;
      if (unameRegExp.test(this.uname) || phoneRegExp.test(this.uname)) {
        this.unameStateS = true;
        this.unameStateE = false;
      } else {
        this.unameStateS = false;
        this.unameStateE = true;
      }
    },
    checkUpwd() {
      let upwdRegExp = /^[0-9a-zA-Z]{3,16}$/;
      if (upwdRegExp.test(this.upwd)) {
        this.upwdStateS = true;
        this.upwdStateE = false;
      } else {
        this.upwdStateS = false;
        this.upwdStateE = true;
      }
    },
    login() {
      // post请求 qs模块 把对象转为字符串
      let data = qs.stringify({ uname: this.uname, upwd: this.upwd });
      console.log(data);
      this.axios
        .post("/user/login", data, {
          headers: { "Content-Type": "application/x-www-form-urlencoded" },
        })
        .then((res) => {
          console.log(res.data);
          console.log(res.data.code);
          if (res.data.code == 1) {
            alert("登录成功");
            this.$router.push("/");
          } else {
            alert("账号或密码错误");
          }
          //登录时会出现卡顿的情况？？？
        });
    },
  },
};
</script>
<style scoped>
.isSuccess {
  border-radius: 5px;
  border: 2px solid #67c23a;
}
.isError {
  border-radius: 5px;
  border: 2px solid #f56c6c;
}
body {
  background: url(/img/loginbg1.jpg);
  height: 892px; /* 这里的背景图存在问题 */
  font-size: 14px;
}
.button-text {
  display: inline-block;
  vertical-align: top;
  width: auto;
  line-height: 28px;
  font-size: 14px;
  padding: 0;
  margin: 0 6px;
}
.input3 {
  margin: 0px 0px 0px 26px;
  padding-top: 0px;
  padding-bottom: 0px;
  height: 34px;
  line-height: 34px;
  width: 272px;
  border-radius: 5px;
}
.input2 {
  margin: 0px 0px 0px 26px;
  padding-top: 0px;
  padding-bottom: 0px;
  height: 34px;
  line-height: 34px;
  width: 272px;
  border-radius: 5px;
}
a {
  text-decoration: none;
}
.top {
  display: block;
  margin: 0 auto;
  overflow: hidden;
  position: absolute;
  top: 0;
  width: 100%;
  min-width: 800px;
  text-align: left;
  line-height: 48px;
  background: #247eb2;
  filter: alpha(Opacity=80);
  -moz-opacity: 0.8;
  opacity: 0.8;
}
.top i {
  margin-left: 20px;
  font-style: normal;
  color: #ddd;
}
.top span {
  float: right;
}
.top span a {
  margin-right: 30px;
  color: #ddd;
}

.bot {
  display: block;
  margin: 0 auto;
  position: absolute;
  bottom: 0;
  width: 100%;
  min-width: 800px;
  line-height: 42px;
  text-align: center;
  color: #000;
  background: #fff;
  filter: alpha(Opacity=50);
  -moz-opacity: 0.5;
  opacity: 0.5;
}

.loginBox {
  display: block;
  margin: 0 auto;
  overflow: hidden;
  width: 680px;
  height: 308px;
  box-shadow: 0 0 10px 0 #999;
  background: #fff;
  position: absolute;
  left: 50%;
  top: 50%;
  margin-left: -340px;
  margin-top: -154px;
}
.loginleft {
  float: left;
  margin-right: 80px;
}
.loginBox h3 {
  display: block;
  margin: 0 auto;
  padding: 0;
  font-weight: normal;
  font-size: 24px;
  color: #b7883e;
  margin-top: 20px;
}
.loginBox h3 i {
  font-style: normal;
  font-size: 16px;
  color: #c3c5c6;
}
.myline {
  display: block;
  margin-top: 24px;
  text-align: left;
}
.button {
  text-decoration: none;
  display: inline-block;
  overflow: hidden;
  margin: 25px;
  padding: 0;
  cursor: pointer;
  outline: none;
  text-align: center;
  vertical-align: middle;
  line-height: normal;
}
.button-left {
  display: inline-block;
  position: relative;
  overflow: hidden;
  margin: 0;
  padding: 0;
  vertical-align: top;
}
</style>