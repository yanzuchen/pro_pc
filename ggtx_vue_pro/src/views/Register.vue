<template>
  <div>
    <my-header></my-header>
    <two-banner></two-banner>
    <span class="claSpan" style="border-radius: 3px 3px 0 0"
      ><b>≡ 用户注册</b></span
    >

    <div class="regBox" style="background: url(/img/regbg.png) no-repeat right">
      <form id="regForm">
        <span class="regLine">
          <i>用户姓名：</i>
          <input
            :class="{ isSuccess: unameStateS, isError: unameStateE }"
            @blur="checkuname"
            v-model="uname"
            type="text"
            placeholder="2-16位真实收货人姓名(登录用户名)"
            style="
              margin: 0px 26px 0px 0px;
              padding-top: 0px;
              padding-bottom: 0px;
              height: 34px;
              line-height: 34px;
              width: 272px;
            "
          />
        </span>
        <span class="regLine">
          <i>登录密码：</i>
          <input
            @blur="checkupwd"
            :class="{ isSuccess: upwdStateS, isError: upwdStateE }"
            v-model="upwd"
            type="text"
            class="textbox-text validatebox-text validatebox-invalid textbox-prompt"
            placeholder="3-16位密码"
            style="
              margin: 0px 26px 0px 0px;
              padding-top: 0px;
              padding-bottom: 0px;
              height: 34px;
              line-height: 34px;
              width: 272px;
            "
          />
        </span>
        <span class="regLine">
          <i>再输一次：</i>
          <input
            @blur="checkconupwd"
            :class="{ isSuccess: conupwdStateS, isError: conupwdStateE }"
            v-model="conupwd"
            type="text"
            class="textbox-text validatebox-text validatebox-invalid textbox-prompt"
            placeholder="再输入一次"
            style="
              margin: 0px 26px 0px 0px;
              padding-top: 0px;
              padding-bottom: 0px;
              height: 34px;
              line-height: 34px;
              width: 272px;
            "
          />
        </span>
        <span class="regLine">
          <i>手机号码：</i>
          <span style="width: 300px; height: 36px"
            ><input
              @blur="checkphone"
              :class="{ isSuccess: phoneStateS, isError: phoneStateE }"
              v-model="phone"
              type="text"
              autocomplete="off"
              placeholder="收货人真实手机号码"
              style="
                margin: 0px;
                padding-top: 0px;
                padding-bottom: 0px;
                height: 34px;
                line-height: 34px;
                width: 298px;
              "
            />
          </span>
        </span>
        <span class="regLine">
          <i>收货地址：</i>
          <input
            @blur="checkadd"
            :class="{ isSuccess: addStateS, isError: addStateE }"
            v-model="add"
            type="text"
            class="textbox-text validatebox-text validatebox-invalid textbox-prompt"
            placeholder="收货人详细地址"
            style="
              margin: 0px;
              padding-top: 0px;
              padding-bottom: 0px;
              height: 34px;
              line-height: 34px;
              width: 298px;
            "
          />
        </span>
        <span class="regLine">
          <i></i>
          <a
            style="width: 200px; height: 42px; background: #ff4400; color: #fff"
            ><span class="btn_left" style="margin-top: 6px"
              ><span
                @click="register"
                style="
                  width: 200px;
                  height: 42px;
                  background: #ff4400;
                  color: #fff;
                  display: block;
                  text-align: center;
                  border-radius: 5px;
                "
                >立即注册</span
              ></span
            ></a
          >
        </span>
      </form>
    </div>
    <my-footer></my-footer>
  </div>
</template>
<script>
import twoBanner from "../components/twoBanner.vue";
import qs from "qs";
export default {
  components: {
    twoBanner,
  },
  data() {
    return {
      uname: "",
      unameStateS: null,
      unameStateE: null,
      upwd: "",
      upwdStateS: null,
      upwdStateE: null,
      conupwd: "",
      conupwdStateS: null,
      conupwdStateE: null,
      phone: "",
      phoneStateS: null,
      phoneStateE: null,
      add: "",
      addStateS: null,
      addStateE: null,
    };
  },
  methods: {
    checkuname() {
      let uname = this.uname;
      console.log(uname);
      let unameRegExp = /^[\u4e00-\u9fa5]{2,16}$/;
      if (unameRegExp.test(uname)) {
        this.unameStateS = true;
        this.unameStateE = false;
        return true;
      } else {
        this.unameStateS = false;
        this.unameStateE = true;
        return false;
      }
    },

    checkupwd() {
      let upwd = this.upwd;
      console.log(upwd);
      let upwdRegExp = /^[0-9A-Za-z_]{3,16}$/;
      if (upwdRegExp.test(upwd)) {
        this.upwdStateS = true;
        this.upwdStateE = false;
        return true;
      } else {
        this.upwdStateS = false;
        this.upwdStateE = true;
        return false;
      }
    },

    checkconupwd() {
      let conupwd = this.conupwd;
      console.log(conupwd);
      if (conupwd === this.upwd && conupwd !== "") {
        this.conupwdStateS = true;
        this.conupwdStateE = false;
        return true;
      } else {
        this.conupwdStateS = false;
        this.conupwdStateE = true;
        return false;
      }
    },

    checkphone() {
      let phone = this.phone;
      console.log(phone);
      let phoneRegExp = /^1[34578]\d{9}$/;
      if (phoneRegExp.test(phone)) {
        this.phoneStateS = true;
        this.phoneStateE = false;
        return true;
      } else {
        this.phoneStateS = false;
        this.phoneStateE = true;
        return false;
      }
    },

    checkadd() {
      let add = this.add;
      console.log(add);
      if (this.add !== "") {
        this.addStateS = true;
        this.addStateE = false;
        return true;
      } else {
        this.addStateS = false;
        this.addStateE = true;
        return false;
      }
    },

    register() {
      if (
        this.checkuname() &&
        this.checkupwd() &&
        this.checkconupwd() &&
        this.checkphone() &&
        this.checkadd()
      ) {
        let data = qs.stringify({
          uname: this.uname,
          upwd: this.upwd,
          uphone: this.phone,
          uadd: this.add,
        });
        console.log(data);
        this.axios
          .post("/user/register", data, {
            headers: { "Content-Type": "application/x-www-form-urlencoded" },
          })
          .then((res) => {
            console.log(res.data);
            if (res.data.code === 1) {
              alert("注册成功");
              this.$router.push("/login");
            }else{
              alert("用户名已存在，请重新输入");
            }
          });
      }else{
        alert('注册失败，请输入正确的格式')
      }
    },
  },
};
</script>
<style scoped>
input{
  border-radius: 5px;
}
.isSuccess {
  border-radius: 5px;
  border: 2px solid #67c23a;
}
.isError {
  border-radius: 5px;
  border: 2px solid #f56c6c;
}
.btn_left {
  display: inline-block;
  position: relative;
  overflow: hidden;
  margin: 0;
  padding: 0;
  vertical-align: top;
}
.btn_text {
  display: inline-block;
  vertical-align: top;
  width: auto;
  line-height: 28px;
  font-size: 14px;
  padding: 0;
  margin: 0;
}
.textbox-icon {
  display: inline-block;
  width: 18px;
  height: 20px;
  overflow: hidden;
  vertical-align: top;
  background-position: center center;
  cursor: pointer;
  opacity: 0.6;
  filter: alpha(opacity=60);
  text-decoration: none;
  outline-style: none;
}
.textbox-addon {
  position: absolute;
  top: 0;
}

table {
  border-collapse: collapse;
}

.regBox {
  display: block;
  margin: 0 auto;
  padding-left: 50px;
  width: 1200px;
  line-height: 48px;
  height: 530px;
  background: url(/image/regbg.png) no-repeat right;
  background-color: #fff;
  border: 1px solid #fccca2;
}

.regLine {
  display: block;
  margin-top: 24px;
  text-align: left;
}

.regLine i {
  display: inline-block;
  width: 100px;
  font-style: normal;
  color: #999;
}

#winEdit {
  padding: 20px;
  font-size: 12px;
  font: normal 12px/24px Microsoft YaHei, Helvetica, Arial, sans-serif;
}
.claSpan {
  display: block;
  margin: auto;
  margin-top: 10px;
  width: 1200px;
  padding: 10px;
  line-height: 30px;
  background: #ea984f;
  text-align: left;
  color: #fff;
  font-size: 18px;
  border-radius: 2px;
}
.claSpan a {
  font-size: 14px;
  color: #fff;
  float: right;
  cursor: pointer;
}
</style>