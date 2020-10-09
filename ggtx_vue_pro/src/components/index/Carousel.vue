<template>
  <div id="demo" class="carousel" :style="{ width: innerWidth + 'px' }" @mouseenter="stop" @mouseleave="start">
    <div class="carousel-inner" :class="ulClass" :style="ulStyle">
      <div v-for="(img, i) of imgs" :key="i" class="carousel-item" :style="{ width: innerWidth + 'px' }">
        <router-link :to="img.href">
          <img :src="img.img" :style="{ width: innerWidth + 'px' }" />
        </router-link>
        <router-link :to="img.href"></router-link>
      </div>
      <div class="carousel-item" :style="{ width: innerWidth + 'px' }">
        <router-link :to="imgs[0].href">
          <img :src="imgs[0].img" :style="{ width: innerWidth + 'px' }" />
        </router-link>
        <router-link :to="imgs[0].href"></router-link>
      </div>
    </div>
    <a href="javascript:;" @click="move(1)" class="carousel-control-next">
      <span class="carousel-control-next-icon"></span>
    </a>
    <a href="javascript:;" @click="move(-1)" class="carousel-control-prev">
      <span class="carousel-control-prev-icon"></span>
    </a>
    <ul class="carousel-indicators">
      <li
        v-for="(img, idx) of imgs"
        :key="idx"
        :class="idx == i ? 'active' : ''"
        @click="moveTo(idx)"
      ></li>
    </ul>
  </div>
</template>
<script>
export default {
  data() {
    return {
      innerWidth: window.innerWidth,
      ulClass: { hasTrans: true },
      i: 0,
      imgs: [{href:""}],
      canClick: true,
      timer: null,
    };
  },
  created() {
    window.addEventListener("resize", () => {
      this.innerWidth = window.innerWidth;
    });
    this.start();
  },
  mounted() {
    this.axios.get("/carousel/car").then((result) => {
      this.imgs = result.data;
    });
  },
  methods: {
    stop() {
      clearInterval(this.timer);
    },
    start() {
      this.timer = setInterval(() => {
        this.move(1);
      }, 3000);
    },
    move(i) {
      if (this.canClick) {
        this.canClick = false;
        if (i == -1 && this.i == 0) {
          this.ulClass.hasTrans = false;
          setTimeout(() => {
            this.i = this.imgs.length;
            setTimeout(() => {
              this.ulClass.hasTrans = true;
              this.i += i;
              setTimeout(() => {
                this.canClick = true;
              }, 200);
            }, 50);
          }, 50);
        } else if (i == 1 && this.i == this.imgs.length - 1) {
          this.i += i;
          setTimeout(() => {
            this.ulClass.hasTrans = false;
            setTimeout(() => {
              this.i = 0;
              setTimeout(() => {
                this.ulClass.hasTrans = true;
                setTimeout(() => {
                  this.canClick = true;
                });
              }, 50);
            }, 50);
          }, 200);
        } else {
          this.i += i;
          setTimeout(() => {
            this.canClick = true;
          }, 300);
        }
      }
    },
    moveTo(i) {
      if (this.canClick) {
        this.i = i;
        this.canClick = false;
        setTimeout(() => {
          this.canClick = true;
        }, 300);
      }
    },
  },
  computed: {
    ulStyle() {
      var width = this.innerWidth * (this.imgs.length + 1) + "px";
      var marginLeft = -this.i * this.innerWidth + "px";
      return { width, marginLeft };
    },
  },
};
</script>
<style scoped>
section > .carousel {
  overflow: hidden;
}
section > .carousel:after {
  content: "";
  display: block;
  clear: both;
}
section > .carousel > .carousel-inner.hasTrans {
  transition: all 0.2s linear;
}
section > .carousel > .carousel-inner > .carousel-item {
  display: block;
  float: left;
}
section > .carousel > .carousel-inner > .carousel-item > a:last-child {
  display: block;
  height: 50px;
  color: #fff;
  text-align: center;
  font-size: 15px;
  line-height: 50px;
  text-decoration: none;
  background-color: #f68cc6;
}
section > .carousel > .carousel-inner > .carousel-item:nth-child(2) > a:last-child {
  background-color: #fa9c77;
}
section > .carousel > .carousel-inner > .carousel-item:nth-child(3) > a:last-child {
  background-color: #ba4b5d;
}
section > .carousel > .carousel-inner > .carousel-item:nth-child(4) > a:last-child {
  background-color: #02c0f0f5;
}
.carousel-indicators {
  bottom: 130px;
}
.carousel-indicators li {
  width: 15px;
  height: 15px;
  background-color: #fff;
  margin-left: 6px;
  margin-right: 6px;
  border-radius: 50%;
  top: 60px;
}
.carousel-indicators > li:hover,
.carousel-indicators > li.active {
  transform: scale(1.3);
}
.carousel-indicators > li:first-child {
  background-color: #f68cc6;
}
.carousel-indicators > li:nth-child(2) {
  background-color: #fa9c77;
}
.carousel-indicators > li:nth-child(3) {
  background-color: #ba4b5d;
}
.carousel-indicators > li:nth-child(4) {
  background-color: #02c0f0f5;
}
.carousel-control-prev,
.carousel-control-next {
  width: 40px;
  height: 100px;
  background-color: rgba(95, 95, 92, 0.3);
  top: 40%;
  margin-left: 40px;
  border-radius: 0.25rem;
}
.carousel-control-next {
  margin-right: 40px;
}
</style>