<template>
  <div>
    <my-header></my-header>
    <two-banner></two-banner>
    <span class="viewtil"><b>≡ 商品详情</b> </span>
    <div class="details">
      <img src="/img/sale.png" class="sale" />
      <span class="thpic"><img :src="product.pic" /> </span>
      <div
        class="details_mask"
        id="mask"
        :style="maskStyle"
        :class="{ 'd-none': hide }"
      ></div>
      <div
        id="super-mask"
        @mouseover="toggle"
        @mouseout="toggle"
        @mousemove="move"
        style="width: 420px; height: 420px; z-index: 110; position: absolute"
      ></div>
      <span>
        <div
          class="details_bigdiv"
          :class="{ 'd-none': hide }"
          :style="{
            'background-image': `url(${product.pic})`,
            'background-position': `-${parseInt(maskStyle.left) * 1.1}px -${
              parseInt(maskStyle.top) * 1.1
            }px`,
          }"
        ></div>
      </span>
      <h2 id="mincen" v-text="product.title"></h2>
      <span class="thline"
        ><em>规格：</em> <i v-text="product.specification"></i
      ></span>
      <span class="thline"
        ><em>重量：</em> <i v-text="product.weight"></i
      ></span>
      <span class="thline"
        ><em>优惠折扣：</em> <i v-text="product.discount"></i
      ></span>
      <span class="thline">
        <em>单价：</em> ¥
        <i id="danjiaA"></i>
        <i
          id="danjiaB"
          style="font-size: 24px; color: red"
          v-text="product.price"
        ></i>
      </span>
      <span class="thline"
        ><em>购买提示：</em> <i v-text="product.tips"></i
      ></span>

      <div class="addcart">
        数量：
        <span>
          <input type="text" name="sulang" value="1" readonly="" />
          <i style="top: 0">+</i>
          <i style="bottom: 0">-</i>
        </span>
        <input
          type="button"
          value="加入购物车"
          class="button"
          onclick="cart()"
        />
        <input
          type="button"
          value="立即购买"
          class="button"
          onclick="cart('now')"
          style="background: #b30303"
        />
      </div>
    </div>

    <span class="viewtil"><b>≡ 产品详情</b> </span>
    <div class="cpinfo">
      <img :src="product.pic"/>
    </div>
    <my-footer></my-footer>
  </div>
</template>
<script>
import twoBanner from "../components/twoBanner.vue";
export default {
  components: {
    twoBanner,
  },
  props: ["did"],
  data() {
    return {
      product: {},
      hide: true,
      maskStyle: {
        left: "0",
        top: "0",
      },
    };
  },
  methods: {
    move(e) {
      var left = e.offsetX - 115;
      var top = e.offsetY - 115;
      if (left < 0) left = 0;
      else if (left > 190) left = 190;
      if (top < 0) top = 0;
      else if (top > 190) top = 190;
      this.maskStyle = {
        left: left + "px",
        top: top + "px",
      };
    },
    toggle() {
      this.hide = !this.hide;
    },
  },
  created() {
    this.axios
      .get("/product/details", {
        params: { did: this.did },
      })
      .then((result) => {
        this.product = result.data[0];
      });
  },
};
</script>
<style scoped>
.details_bigdiv {
  float: left;
  position: absolute;
  width: 600px;
  height: 600px;
  left: 425px;
  z-index: 201;
}
.details_mask {
  position: absolute;
  z-index: 100;
  background-color: lightYellow;
  opacity: 0.5;
  width: 230px;
  height: 230px;
}
table {
  border-collapse: collapse;
}

.viewtil {
  display: block;
  margin: auto;
  margin-top: 10px;
  width: 1200px;
  line-height: 36px;
  text-align: left;
  color: #ff4400;
  border-bottom: 1px solid #ff4400;
}

.details {
  display: block;
  margin: auto;
  width: 1200px;
  margin-top: 10px;
  position: relative;
  overflow: hidden;
  background: #fff;
}
.details .sale {
  position: absolute;
  right: 0;
}
.details .scands {
  position: absolute;
  right: 10px;
  bottom: 10px;
  width: 120px;
  height: 120px;
}
.details .thpic {
  display: block;
  width: 420px;
  height: 420px;
  border-right: 1px dotted #ddd;
  padding: 30px;
  margin-right: 50px;
  float: left;
}
.details .thpic img {
  display: block;
  width: 100%;
  height: 100%;
}
.details h2 {
  display: block;
  margin: 0;
  padding: 0;
  text-align: left;
  line-height: 36px;
  padding-top: 20px;
  font-size: 25px;
  font-weight: bold;
}
.details .thline {
  display: block;
  text-align: left;
  line-height: 60px;
}
.details .thline em {
  display: inline-block;
  font-style: normal;
  color: #999;
}
.details .thline i {
  display: inline-block;
  font-style: normal;
  color: #333;
}
#danjiaA {
  text-decoration: line-through;
}
.addcart {
  display: block;
  text-align: left;
  padding-top: 15px;
}
.addcart span {
  display: inline-block;
  width: 100px;
  position: relative;
}
.addcart span input {
  display: inline-block;
  width: 60px;
  height: 36px;
  text-align: center;
  border: 1px solid #ddd;
}
.addcart span i {
  display: inline-block;
  padding: 0;
  margin: 0;
  width: 40px;
  line-height: 18px;
  text-align: center;
  font-style: normal;
  font-size: 18px;
  font-weight: bold;
  color: #000;
  position: absolute;
  right: 0;
  cursor: pointer;
}
.addcart .button {
  display: inline-block;
  padding: 0;
  margin: 0;
  width: 180px;
  line-height: 38px;
  text-align: center;
  color: #fff;
  background: #ff4400;
  border: none;
  vertical-align: middle;
  font-family: 微软雅黑, 宋体, Arial;
  font-size: 16px;
  cursor: pointer;
}

.cpinfo {
  display: block;
  margin: auto;
  width: 1200px;
  margin-top: 10px;
  text-align: center;
  background: #fff;
}
.cpinfo img {
  display: block;
  margin: auto;
  width: 1000px;
}
</style>