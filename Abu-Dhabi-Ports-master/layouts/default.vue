<template>
  <div>
  <nuxt/>
  
  </div>
</template>
<script>

export default {
  data() {
    return {
      loading: true,
      loadingText: "انتظر",
      alerText: "",
      userLogin: false
    };
  },
  components: {
   
  },

};
</script>
<style>
</style>
//--------------------------------------------------------
// CREATE EMIT IN ANY COMPONENT
//--------------------------------------------------------
// test() {
// this.$root.$emit("testEmit", "testText");
// }