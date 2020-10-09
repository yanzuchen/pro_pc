<template>
  <div>
    <span class="promore">{{ f1.fname }} <a>更多商品&gt;&gt;</a></span>
    <div class="probox">
      <img :src="f1.img" class="linkimg" />
      <div v-for="(v, k) of p1" :key="k">
        <router-link :to="`/details/${v.href}`">
          <img :src="v.pic" />
          <b v-text="v.title"></b>
          <i v-cloak>{{ v.price.toFixed(2) }}</i>
        </router-link>
      </div>
    </div>

    <span class="promore" style="background: #00bbc8"
      >{{ f2.fname }} <a>更多商品&gt;&gt;</a></span
    >
    <div class="probox">
      <img :src="f2.img" class="linkimg" />
      <div v-for="(v, k) of p2" :key="k">
        <router-link :to="`/details/${v.href}`">
          <img :src="v.pic" />
          <b v-text="v.title"></b>
          <i v-cloak>{{ v.price.toFixed(2) }}</i>
        </router-link>
      </div>
    </div>

    <span class="promore" style="background: #63ca9b"
      >{{ f3.fname }} <a>更多商品&gt;&gt;</a></span
    >
    <div class="probox">
      <img :src="f3.img" class="linkimg" />
      <div v-for="(v, k) of p3" :key="k">
        <router-link :to="`/details/${v.href}`">
          <img :src="v.pic" />
          <b v-text="v.title"></b>
          <i v-cloak>{{ v.price.toFixed(2) }}</i>
        </router-link>
      </div>
    </div>

    <span class="promore" style="background: #cd75ce"
      >{{ f4.fname }} <a>更多商品&gt;&gt;</a></span
    >
    <div class="probox">
      <img :src="f4.img" class="linkimg" />
      <div v-for="(v, k) of p4" :key="k">
        <router-link :to="`/details/${v.href}`">
          <img :src="v.pic" />
          <b v-text="v.title"></b>
          <i v-cloak>{{ v.price.toFixed(2) }}</i>
        </router-link>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      f1: {},
      p1: [],
      f2: {},
      p2: [],
      f3: {},
      p3: [],
      f4: {},
      p4: [],
    };
  },
  mounted() {
    this.axios.get("/product/family").then((result) => {
      this.f1 = result.data[0];
      this.f2 = result.data[1];
      this.f3 = result.data[2];
      this.f4 = result.data[3];
    });
    this.axios.get("/product/index").then((result) => {
      this.p1 = result.data.slice(0, 8);
      this.p2 = result.data.slice(8, 16);
      this.p3 = result.data.slice(16, 24);
      this.p4 = result.data.slice(24, 32);
    });
  },
};
</script>
<style scoped>
a {
  text-decoration: none;
  color: #333;
}
a :hover {
  color: #333;
}
.promore {
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
.promore a {
  font-size: 14px;
  color: #fff;
  float: right;
  cursor: pointer;
}

.probox {
  display: block;
  margin: auto;
  width: 1200px;
  overflow: hidden;
}
.probox .linkimg {
  display: block;
  width: 240px;
  height: 570px;
  float: left;
  margin-top: 10px;
  cursor: pointer;
}

.probox a {
  display: block;
  width: 230px;
  height: 280px;
  float: left;
  position: relative;
  margin: 10px 0 0 10px;
  text-align: left;
  background: #fff;
}
.probox a img {
  display: block;
  margin: auto;
  width: 200px;
  height: 200px;
  margin-top: 15px;
}
.probox a b {
  display: block;
  line-height: 30px;
  padding: 0 15px 0 15px;
  text-align: left;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
  font-weight: normal;
}
.probox a i {
  margin-left: 15px;
  font-style: normal;
  font-size: 16px;
  color: red;
}
</style>