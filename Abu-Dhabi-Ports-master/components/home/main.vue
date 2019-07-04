<template>
    <div>
        <!--Start Main-->
        <main class="d-md-block d-none">
            <!--Start Index Banner--> 
            <section id="THAT_index_banner" class="THAT_section _lg _theme_color index_banner">
                <a href="#" @click="$root.$emit('showVideoModal')" data-modal="THAT_modal_video" class="THAT_modal_trigger THAT_button _md _stroke _white play_button">
                    {{$t('home.section1.startVideo')}} 
                    <i class="icon-play"></i>
                </a>
                <div class="container text-center">
                    <div class="row justify-content-center">
                        <div class="col-md-12">
                            <header class="THAT_section_header mb-4">
                                <h1 class="THAT_title _xl mb-0">{{$t('home.section1.title')}}</h1>
                            </header>
                        </div>
                        <div class="col-md-6">
                            <div class="mt-20 mb-60">
                                <p class="THAT_text _lg mb-20">{{$t('home.section1.desc1')}}</p>
                                <p class="THAT_text _lg mb-40">{{$t('home.section1.desc2')}}</p>
                            </div>
                            <button @click="startQuiz" class="THAT_button _lg _white">
                                <i class="icon-arrow-left"></i>
                                {{$t('home.startQuizBtn')}}
                            </button>
                        </div>
                    </div>
                </div>
            </section>
            <!--End Index Banner-->
            <!--Start Features Section-->
            <section id="THAT_index_features" class="THAT_section _md">
                <div class="container">
                    <header class="THAT_section_header text-center">
                        <div class="row justify-content-center">
                            <div class="col-lg-6 col-md-8">
                                <h2 class="THAT_title _lg _theme_color mb-20">{{$t('home.section2.features.feature1.title')}}</h2>
                                <p>{{$t('home.section2.features.feature1.desc')}}</p>
                            </div>
                        </div>
                    </header>
                    <div class="row justify-content-between">
                        <div class="col-lg-5 col-md-6">
                            <div class="THAT_list_item">
                                <span class="_theme_color">
                                    <i class="icon-wallet"></i>
                                </span>
                                <div class="THAT_list_item_inner">
                                    <h3 class="THAT_title _sm _theme_color mb-3">{{$t('home.section2.features.feature2.title')}}</h3>
                                    <p>{{$t('home.section2.features.feature2.desc')}}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-6">
                            <div class="THAT_list_item">
                                <span class="_theme_color">
                                    <i class="icon-eye"></i>
                                </span>
                                <div class="THAT_list_item_inner">
                                    <h3 class="THAT_title _sm _theme_color mb-3">{{$t('home.section2.features.feature3.title')}}</h3>
                                    <p>{{$t('home.section2.features.feature3.desc')}}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-6">
                            <div class="THAT_list_item">
                                <span class="_theme_color">
                                    <i class="icon-bulb"></i>
                                </span>
                                <div class="THAT_list_item_inner">
                                    <h3 class="THAT_title _sm _theme_color mb-3">{{$t('home.section2.features.feature4.title')}}</h3>
                                    <p>{{$t('home.section2.features.feature4.desc')}}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-6">
                            <div class="THAT_list_item">
                                <span class="_theme_color">
                                    <i class="icon-emoticon"></i>
                                </span>
                                <div class="THAT_list_item_inner">
                                    <h3 class="THAT_title _sm _theme_color mb-3">{{$t('home.section2.features.feature5.title')}}</h3>
                                    <p>{{$t('home.section2.features.feature5.desc')}}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-6">
                            <div class="THAT_list_item">
                                <span class="_theme_color">
                                    <i class="icon-free"></i>
                                </span>
                                <div class="THAT_list_item_inner">
                                    <h3 class="THAT_title _sm _theme_color mb-3">{{$t('home.section2.features.feature6.title')}}</h3>
                                    <p>{{$t('home.section2.features.feature6.desc')}}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-6">
                            <div class="THAT_list_item">
                                <span class="_theme_color">
                                    <i class="icon-refresh"></i>
                                </span>
                                <div class="THAT_list_item_inner">
                                    <h3 class="THAT_title _sm _theme_color mb-3">{{$t('home.section2.features.feature7.title')}}</h3>
                                    <p>{{$t('home.section2.features.feature7.desc')}}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 text-center mt-4">
                            <button @click="startQuiz" class="THAT_button _lg _theme_color">
                                <i class="icon-arrow-left"></i>
                                {{$t('home.startQuizBtn')}}
                            </button>
                        </div>
                    </div>
                </div>
            </section>
            <!--End Features Section-->
            <!--Start Result Steps Section-->
            <section id="THAT_index_result_steps" class="THAT_section _md">
                <div class="container">
                    <header class="THAT_section_header text-center">
                        <div class="row justify-content-center">
                            <div class="col-lg-6 col-md-8">
                                <h2 class="THAT_title _lg _theme_color mb-20">{{$t('home.section3.title')}}</h2>
                                <p>{{$t('home.section3.desc')}}</p>
                            </div>
                        </div>
                    </header>
                    <div class="row justify-content-between">
                        <div class="col-lg-3 col-md-4 text-center">
                            <span class="circle _bg _theme_color mb-4">
                                <i class="icon-user"></i>
                            </span>
                            <div class="THAT_result_step">
                                <h3 class="THAT_title _sm _theme_color mb-2">{{$t('home.section3.stepper.step1.title')}}</h3>
                                <p>{{$t('home.section3.stepper.step1.desc')}}</p>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-4 text-center">
                            <span class="circle _bg _theme_color mb-4">
                                <i class="icon-mark-circle"></i>
                            </span>
                            <div class="THAT_result_step">
                                <h3 class="THAT_title _sm _theme_color mb-2">{{$t('home.section3.stepper.step2.title')}}</h3>
                                <p>{{$t('home.section3.stepper.step2.desc')}}</p>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-4 text-center">
                            <span class="circle _bg _theme_color mb-4">
                                <i class="icon-chart-pie"></i>
                            </span>
                            <div class="THAT_result_step">
                                <h3 class="THAT_title _sm _theme_color mb-2">{{$t('home.section3.stepper.step3.title')}}</h3>
                                <p>{{$t('home.section3.stepper.step3.desc')}}</p>
                            </div>
                        </div>
                        <div class="col-md-12 text-center mt-5">
                            <button @click="startQuiz" class="THAT_button _lg _theme_color mb-4">
                                <i class="icon-arrow-left"></i>
                                {{$t('home.startQuizBtn')}}
                            </button>
                            <p class="THAT_text _sm mb-0">{{$t('home.section3.subDesc')}}</p>
                        </div>
                    </div>
                </div>
            </section>
            <!--End Result Steps Section-->
            <!--Start Testimonials Section-->
            <section v-if="testimonials && testimonials.length > 0" id="THAT_index_testimonials" class="THAT_section _md">
                <div class="container">
                    <header class="THAT_section_header text-center">
                        <div class="row justify-content-center">
                            <div class="col-md-5">
                                <h2 class="THAT_title _lg _theme_color">{{$t('home.section4.title')}}</h2>
                            </div>
                        </div>
                    </header>
                    <div class="row">
                        <!-- Testimonial Item -->
                        <div class="col-lg-4 col-md-6" v-for="(item,i) in testimonials" :key="i">
                            <div class="testimonial_card">
                                <div class="testimonial_card_content">
                                    <figure>
                                        <img :src="item.image" :alt="item.title">
                                    </figure>
                                    <p>{{item.text}}</p>
                                    <a class="text-primary" target="_blank" v-if="item.link && item.link.indexOf('http') != -1" :href="item.link"> اضغط هنا</a>
                                    <a class="text-primary" target="_blank" v-if="item.link && item.link.indexOf('http') == -1" :href="'http://'+item.link"> اضغط هنا</a>
                                </div>
                                <div class="testimonial_card_label">
                                    <nuxt-link to=""><h3 class="THAT_title _sm _theme_color">{{item.title}}</h3></nuxt-link>
                                    <span v-html="item.excerpt"></span>
                                </div>
                            </div>
                        </div>
                        <!-- End Testimonial Item -->
                        <div class="col-md-12 text-center mt-4">
                            <button @click="startQuiz" class="THAT_button _lg _theme_color">
                                <i class="icon-arrow-left"></i>
                                {{$t('home.startQuizBtn')}}
                            </button>
                        </div>
                    </div>
                </div>
            </section>
            <!--End Testimonials Section-->
        </main>
        <!--End Main -->
        <!-- Start Main [Mobile View]-->
        <main class="d-md-none d-block">
            <!--Start Index Banner-->
            <section class="THAT_section _md _theme_color index_banner">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <header class="THAT_section_header mb-4">
                                <h1 class="THAT_title _lg mb-0">{{$t('home.section1.title')}}</h1>
                                <a data-modal="THAT_modal_video" class="THAT_modal_trigger THAT_button _sm _white _stroke mt-4">
                                    {{$t('home.section1.startVideo')}}
                                    <i class="icon-play ml-0 mr-2"></i>
                                </a>
                            </header>
                            <div class="mt-20 mb-40">
                                <p class="THAT_text mb-3">{{$t('home.section1.desc1')}}</p>
                                <p class="THAT_text">{{$t('home.section1.desc2')}}</p>
                            </div>
                            <button @click="startQuiz" class="THAT_button _md _white d-block text-center">
                                <i class="icon-arrow-left"></i>
                                {{$t('home.startQuizBtn')}}
                            </button>
                        </div>
                    </div>
                </div>
            </section>
            <!--End Index Banner-->
            <!--Start Features Section-->
            <section class="THAT_section _sm">
                <div class="container">
                    <header class="text-center mb-20">
                        <div class="row">
                            <div class="col-md-12">
                                <h2 class="THAT_title _md _theme_color mb-20">{{$t('home.section2.features.feature1.title')}}</h2>
                                <p>{{$t('home.section2.features.feature1.desc')}}</p>
                            </div>
                        </div>
                    </header>
                    <div class="row">
                        <div class="col-md-12">
                            <div id="THAT_features_accordion" class="THAT_accordion mb-40">
                                <div class="THAT_accordion_row">
                                    <div class="THAT_accordion_row_header">
                                        <h2 class="THAT_title _xs">
                                            <a href="#" data-toggle="collapse" data-target="#feature_row1"
                                                aria-expanded="true">
                                                <span class="THAT_accordion_row_header_icon">
                                                    <i class="icon-wallet"></i>
                                                </span>
                                                <cite>{{$t('home.section2.features.feature2.title')}}</cite>
                                            </a>
                                        </h2>
                                    </div>
                                    <div id="feature_row1" class="THAT_accordion_row_content show" data-parent="#THAT_features_accordion">
                                        <div class="THAT_accordion_row_content_body">
                                            <p>{{$t('home.section2.features.feature2.desc')}}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="THAT_accordion_row">
                                    <div class="THAT_accordion_row_header">
                                        <h2 class="THAT_title _xs">
                                            <a href="#" data-toggle="collapse" data-target="#feature_row2"
                                                aria-expanded="false" class="collapsed">
                                                <span class="THAT_accordion_row_header_icon">
                                                    <i class="icon-eye"></i>
                                                </span>
                                                <cite>{{$t('home.section2.features.feature3.title')}}</cite>
                                            </a>
                                        </h2>
                                    </div>
                                    <div id="feature_row2" class="THAT_accordion_row_content collapse" data-parent="#THAT_features_accordion">
                                        <div class="THAT_accordion_row_content_body">
                                            <p>{{$t('home.section2.features.feature3.desc')}}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="THAT_accordion_row">
                                    <div class="THAT_accordion_row_header">
                                        <h2 class="THAT_title _xs">
                                            <a href="#" data-toggle="collapse" data-target="#feature_row3"
                                                aria-expanded="false" class="collapsed">
                                                <span class="THAT_accordion_row_header_icon">
                                                    <i class="icon-bulb"></i>
                                                </span>
                                                <cite>{{$t('home.section2.features.feature4.title')}}</cite>
                                            </a>
                                        </h2>
                                    </div>
                                    <div id="feature_row3" class="THAT_accordion_row_content collapse" data-parent="#THAT_features_accordion">
                                        <div class="THAT_accordion_row_content_body">
                                            <p>{{$t('home.section2.features.feature4.desc')}}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="THAT_accordion_row">
                                    <div class="THAT_accordion_row_header">
                                        <h2 class="THAT_title _xs">
                                            <a href="#" data-toggle="collapse" data-target="#feature_row4"
                                                aria-expanded="false" class="collapsed">
                                                <span class="THAT_accordion_row_header_icon">
                                                    <i class="icon-emoticon"></i>
                                                </span>
                                                <cite>{{$t('home.section2.features.feature5.title')}}</cite>
                                            </a>
                                        </h2>
                                    </div>
                                    <div id="feature_row4" class="THAT_accordion_row_content collapse" data-parent="#THAT_features_accordion">
                                        <div class="THAT_accordion_row_content_body">
                                            <p>{{$t('home.section2.features.feature5.desc')}}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="THAT_accordion_row">
                                    <div class="THAT_accordion_row_header">
                                        <h2 class="THAT_title _xs">
                                            <a href="#" data-toggle="collapse" data-target="#feature_row5"
                                                aria-expanded="false" class="collapsed">
                                                <span class="THAT_accordion_row_header_icon">
                                                    <i class="icon-free"></i>
                                                </span>
                                                <cite>{{$t('home.section2.features.feature6.title')}}</cite>
                                            </a>
                                        </h2>
                                    </div>
                                    <div id="feature_row5" class="THAT_accordion_row_content collapse" data-parent="#THAT_features_accordion">
                                        <div class="THAT_accordion_row_content_body">
                                            <p>{{$t('home.section2.features.feature6.desc')}}</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="THAT_accordion_row">
                                    <div class="THAT_accordion_row_header">
                                        <h2 class="THAT_title _xs">
                                            <a href="#" data-toggle="collapse" data-target="#feature_row6"
                                                aria-expanded="false" class="collapsed">
                                                <span class="THAT_accordion_row_header_icon">
                                                    <i class="icon-refresh"></i>
                                                </span>
                                                <cite>{{$t('home.section2.features.feature7.title')}}</cite>
                                            </a>
                                        </h2>
                                    </div>
                                    <div id="feature_row6" class="THAT_accordion_row_content collapse" data-parent="#THAT_features_accordion">
                                        <div class="THAT_accordion_row_content_body">
                                            <p>{{$t('home.section2.features.feature7.desc')}}</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button @click="startQuiz" class="THAT_button _md _theme_color d-block text-center">
                                <i class="icon-arrow-left"></i>
                                {{$t('home.startQuizBtn')}}
                            </button>
                        </div>
                    </div>
                </div>
            </section>
            <!--End Features Section-->
            <!--Start Result Steps Section-->
            <section class="THAT_section _sm result_steps">
                <div class="container">
                    <header class="mb-20">
                        <div class="row justify-content-center">
                            <div class="col-lg-6 col-md-8">
                                <h2 class="THAT_title _md _theme_color mb-20">{{$t('home.section3.title')}}</h2>
                                <p>{{$t('home.section3.desc')}}</p>
                            </div>
                        </div>
                    </header>
                    <div class="row justify-content-between">
                        <div class="col-lg-3 col-md-4">
                            <div class="THAT_result_step">
                                <span class="circle_num with_arrow">
                                    <i>1</i>
                                </span>
                                <div class="overflow-hidden">
                                    <h3 class="THAT_title _xs _theme_color mb-2">{{$t('home.section3.stepper.step1.title')}}</h3>
                                    <p>{{$t('home.section3.stepper.step1.desc')}}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-4">
                            <div class="THAT_result_step">
                                <span class="circle_num with_arrow">
                                    <i>2</i>
                                </span>
                                <div class="overflow-hidden">
                                    <h3 class="THAT_title _xs _theme_color mb-2">{{$t('home.section3.stepper.step2.title')}}</h3>
                                    <p>{{$t('home.section3.stepper.step2.desc')}}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-4">
                            <div class="THAT_result_step">
                                <span class="circle_num">
                                    <i>3</i>
                                </span>
                                <div class="overflow-hidden">
                                    <h3 class="THAT_title _xs _theme_color mb-2">{{$t('home.section3.stepper.step3.title')}}</h3>
                                    <p>{{$t('home.section3.stepper.step3.desc')}}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 text-center mt-4">
                            <button @click="startQuiz" class="THAT_button _md _theme_color d-block">
                                <i class="icon-arrow-left"></i>
                                {{$t('home.startQuizBtn')}}
                            </button>
                        </div>
                    </div>
                </div>
            </section>
            <!--End Result Steps Section-->
            <!--Start Testimonials Section-->
            <section v-if="testimonials && testimonials.length > 0" class="THAT_section _sm">
                <div class="container">
                    <header class="text-center mb-20">
                        <div class="row justify-content-center">
                            <div class="col-md-5">
                                <h2 class="THAT_title _md _theme_color">{{$t('home.section4.title')}}</h2>
                            </div>
                        </div>
                    </header>
                    <div class="testimonial_slider">
                        <div id="sync2" class="owl-carousel owl-theme">
                            <div class="item" v-for="(item, i) in testimonials" :key="i">
                                <figure>
                                    <img :src="item.image" :alt="item.title">
                                </figure>
                            </div>
                        </div>
                        <div id="sync1" class="owl-carousel owl-theme">
                            <!-- Testimonial Item -->
                            <div class="item" v-for="(item, i) in testimonials" :key="i">
                                <div class="testimonial_card">
                                    <div class="testimonial_card_label">
                                        <figure>
                                            <img :src="item.image" :alt="item.title">
                                        </figure>
                                        <div class="overflow-hidden">
                                            <h3 class="THAT_title _sm _theme_color">{{item.title}}</h3>
                                            <span v-html="item.excerpt"></span>
                                        </div>
                                    </div>
                                    <div class="testimonial_card_content">
                                        <p>{{item.text}}</p>
                                        <a class="text-primary" target="_blank" v-if="item.link && item.link.indexOf('http') != -1" :href="item.link"> اضغط هنا</a>
                                        <a class="text-primary" target="_blank" v-if="item.link && item.link.indexOf('http') == -1" :href="'http://'+item.link"> اضغط هنا</a>
                                    </div>
                                </div>
                            </div>
                            <!-- End Testimonial Item -->
                        </div>
                    </div>
                    <button @click="startQuiz" class="THAT_button _md _theme_color d-block text-center">
                        <i class="icon-arrow-left"></i>
                        {{$t('home.startQuizBtn')}}
                    </button>                   
                </div>
            </section>
            <!--End Testimonials Section-->
        </main>
        <!--End Main [Mobile View]-->
    </div>
</template>
<script>
    export default {
        props: ["testimonials"],
        data() {
            return {
                logged: "",
                completeness: ""
            };
        },
        methods: {
            startQuiz() {
                if (!this.logged) {
                    this.$router.push("/test-form");
                } else {
                    if (!this.completeness) {
                        this.$router.push({
                            path: "/user-profile",
                            query: { url: "/test-questions" }
                        });
                    } else {
                        this.$router.push("/test-questions");
                    }
                }
            },
        },
        created() {
            this.logged = this.$store.getters.getLoged;
            this.completeness = this.$store.getters.getCompleteness;
        }
    };
</script>
<style scoped>
  .index_banner {
    background: url(~/assets/images/index-banner-bg.jpg) no-repeat center center !important;
  }

  #THAT_index_testimonials {
    background-color: #fff;
  }

  #THAT_index_features {
    background-color: #fff;
  }
</style>