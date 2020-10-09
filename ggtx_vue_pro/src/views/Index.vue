<template>
  <div>
    <my-header></my-header>
    <section>
      <carousel></carousel>
    </section>
    <floor-all></floor-all>
    <my-footer></my-footer>
  </div>
</template>
<script>
import floorAll from "../components/index/floorAll.vue";
import Carousel from "../components/index/Carousel.vue";
export default {
  components: {
    floorAll,
    Carousel,
  },
};
</script>