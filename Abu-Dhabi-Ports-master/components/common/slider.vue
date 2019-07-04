<template>
  <v-container>
    <v-card flat class="sliderCard">
      <v-card-title class="vCardCont">
        <Flickity class="SliderFlicker" ref="flickity" v-if="showSLider" :options="{autoPlay: 5000}">
          <div class="carousel-cell" v-for="item in sliderImages" :key="item.image">
            <v-layout row>
              <v-flex col xs5 sm5 md12>
                <img src="https://via.placeholder.com/500" class="sliderImage">
              </v-flex>
              <v-flex col xs7 sm7 md12>
                <p class="SliderTitle">It's hard to put together a meaningful UI prototype without making real requests to an API. It's hard to put together a meaningful UI prototype without making real requests to an API.</p>
              </v-flex>
            </v-layout>
          </div>
        </Flickity>
      </v-card-title>
    </v-card>
  </v-container>
</template>
<script>
  export default {
    data() {
      return {
        showSLider: false,
        sliderImages: []
      };
    }
  };
</script>
<style scoped>
  .SliderFlicker {
    width: 100% !important;
    height: 100% !important;
  }

  .carousel-cell {
    width: 100% !important;
    padding: 0 5px !important;
  }

  .flickity-viewport {
    height: 100% !important;
  }

  .vCardCont {
    height: 93% !important;
  }

  .SliderTitle {
    margin-top: 30px;
    color: #a7a7a8 !important;
    text-align: center;
    font-size: 16px;
    overflow-wrap: break-word;
    max-height: 170px;
    overflow-y: hidden;
  }

  .sliderImage {
    width: 100%;
    height: 300px;
    object-fit: cover;
    display: block;
  }

  @media only screen and (max-width: 800px) and (min-width:768px) {
    .sliderImage {
      height: 230px;
    }
  }

  @media only screen and (max-width: 767px) and (min-width:600px) {
    .SliderTitle {
      max-height: 150px;
    }

    .sliderImage {
      height: 100%;
    }
  }

  @media only screen and (max-width: 599px) and (min-width:361px) {
    .SliderTitle {
      margin-top: 0px;
      font-size: 14px;
      max-height: 130px;
      overflow: hidden;
      text-overflow: ellipsis;
    }

    .vCardCont {
      height: 85% !important;
    }

    .sliderImage {
      height: 100%;
    }
  }

  @media only screen and (max-width: 360px) {
    .SliderTitle {
      max-height: 125px;
    }

    .sliderImage {
      height: auto;
    }
  }
</style>