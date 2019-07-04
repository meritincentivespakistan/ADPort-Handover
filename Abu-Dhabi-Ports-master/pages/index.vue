

<template>
  <v-app v-if="false" class="BG">
    <!-- start HEADER -->
    <template>
      <v-toolbar color="white" height="100px">
        <div @click="HomeFn()" style="cursor:pointer;width: 20vw;">
              <img src="@/assets/images/kafu logo.png" width="100px" />
        </div>
        <v-spacer></v-spacer>

        <v-btn v-if="false" icon class="header-icon">
          <img src="../assets/images/notification.svg" width="20px">
          <span class="g-point"></span>
        </v-btn>

        <v-btn v-if="false" icon class="header-icon">
          <img src="../assets/images/gift.svg" width="20px">
          <!-- <span class="g-point"></span> -->
        </v-btn>

        <v-btn flat v-if="false">messages</v-btn>

        <v-btn flat v-if="false">admin</v-btn>

        <v-btn flat v-if="false">reports</v-btn>
        <v-btn flat @click="logoutFn" v-if="logged">Logout</v-btn>
        <v-btn flat @click="loginFn" v-else>Login</v-btn>


        <v-avatar class="header-avatar">
          <img src="@/assets/images/profile.png" alt="John">
          <span class="g-point"></span>
        </v-avatar>
      </v-toolbar>
    </template>

    <headerTemp/>

    <v-layout row justify-space-between>
      <v-flex xs12>
        <v-card class="fixed-height">
          <div class="avatar-container">
            <v-avatar class="card-avatar">
              <img src="@/assets/images/profile.png" alt="John">
              <span class="g-point"></span>
            </v-avatar>
          </div>

          <v-card-title primary-title>
            <div>
              <div class="headline">{{name}}</div>

              <div class="chip-container" v-if="false">
                <div class="text-xs-center">
                  <v-chip color="white">
                    <v-avatar>
                      <img
                        src="../assets/images/notification.svg"
                        style="height:20px;width:20px;"
                        alt="trevor"
                      >
                    </v-avatar>HR Development
                  </v-chip>
                </div>
                <div class="text-xs-center">
                  <v-chip color="white">
                    <v-avatar>
                      <img
                        src="../assets/images/notification.svg"
                        style="height:20px;width:20px;"
                        alt="trevor"
                      >
                    </v-avatar>Zayed Port
                  </v-chip>
                </div>
              </div>
              <div class="points-container">
                <v-chip>1900 Points</v-chip>
              </div>

              <div class="chip-container">
                <div class="text-xs-center" v-if="false">
                  <v-chip color="white">
                    <v-avatar></v-avatar>128 nominations
                  </v-chip>
                </div>
                <div class="text-xs-center" v-if="false">
                  <v-chip color="white">
                    <v-avatar></v-avatar>2000 Cost of a word
                  </v-chip>
                </div>
              </div>
            </div>
          </v-card-title>
        </v-card>
      </v-flex>
    </v-layout>

    <v-layout>
      <v-flex xs12>
        <v-card>
          <v-card-title>
            <v-layout>
              <v-flex xs2></v-flex>
              <v-flex xs2>
                <div v-if="false" class="points-container">
                  <v-chip>NOMINATE A HERO</v-chip>
                </div>
              </v-flex>
              <v-flex xs2>
                <div v-if="false" class="points-container">
                  <v-chip>SEND AN eCARD</v-chip>
                </div>
              </v-flex>
              <v-flex xs2>
                <div v-if="false" class="points-container">
                  <v-chip>REFER A FRIEND</v-chip>
                </div>
              </v-flex>
              <v-flex xs2>
                <div v-if="false" class="points-container">
                  <v-chip>MAKE A SUGGESTION</v-chip>
                </div>
              </v-flex>
              <v-flex xs2></v-flex>
            </v-layout>
          </v-card-title>
        </v-card>
      </v-flex>
    </v-layout>


    <footerTemp/>
  </v-app>
</template>




<script>
import $ from "jquery";
import headerTemp from "@/components/common/headerTemp";
import footerTemp from "@/components/common/footerTemp";
import Cookies from "js-cookie";

export default {
  name: "ProgramPoints",
  data() {
    return {
      agency:"",
            agencies: ["Native", "Expert", "Intermediate", "Beginner"],

      items: [
        {
          src: "https://cdn.vuetifyjs.com/images/carousel/squirrel.jpg"
        },
        {
          src: "https://cdn.vuetifyjs.com/images/carousel/sky.jpg"
        },
        {
          src: "https://cdn.vuetifyjs.com/images/carousel/bird.jpg"
        },
        {
          src: "https://cdn.vuetifyjs.com/images/carousel/planet.jpg"
        }
      ],
      logged:false,
      name:''
    };
  },
  created() {},
  mounted() {
    this.islogged()
    this.loggedFn();
    this.name=Cookies.get('userName')

  },
  computed: {
   
  },
  watch: {},
  methods: {
    loggedFn(){
      if(Cookies.get('isLogged')=='true') this.logged=true
    },
     logoutFn(){
         Cookies.set('isLogged','false')

          this.logged = false;
          this.$router.push('/')
          location.reload();

       },
        loginFn(){
         this.$router.push('/login')
       },
    islogged(){
      if(Cookies.get("isLogged")=='true'){
      this.$router.push('/rewards')
        
      }
    else{
      this.$router.push('/login')

    }
    },
    HomeFn(){
      this.$router.push('/')
      console.log('ssss')
    }
  },
  components: {
    headerTemp,
    footerTemp
  }
};
</script>

<style scoped>
/* base-color: #0f2a3b */
body {
  background-color: #eaeaea;
}

.logo-image {
  max-height: 60px;
}

.container.first-container {
  height: 245px;
}

.v-card.fixed-height {
  height: 300px !important;
}
.header-icon {
  background-color: #eaeaea;
}
.g-point {
  width: 6px;
  height: 6px;
  background-color: green;
  border-radius: 50%;
  position: absolute;
  right: -2px;
  top: -2px;
}

.header-avatar .g-point {
  width: 8px;
  height: 8px;
  right: 0px;
  top: 5px;
}

.sub-links-container {
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: #fff;
  padding: 15px;
}

.sub-links-container.transparent {
  background-color: transparent;
}

.sub-links-container.transparent .link-item {
  margin: 0px 15px;
}

.sub-links-container.transparent .link-item a {
  color: #fff;
}

.v-card__title {
  justify-content: center;
}

.v-card__title--primary {
  padding-top: 0px;
}

.headline {
  color: #0f2a3b;
  text-align: center;
  font-size: 16px !important;
  width: 100%;
}
.link-item {
  display: inline-block;
  margin: 20px 15px;
}
.link-item a {
  color: #0f2a3b;
  text-decoration: none;
  font-size: 15px;
}

.chip-container {
  width: 100%;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.points-container {
  width: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
}

.points-container .v-chip {
  font-size: 18px;
  font-weight: normal;
  padding: 5px 20px;
}

.avatar-container {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 120px;
}

.card-avatar {
  width: 100px !important;
  height: 100px !important;
}

.card-avatar .g-point {
  top: 20px;
  right: 2px;
  width: 10px;
  height: 10px;
}
.nav-bar-align {
  margin-right: 18px !important;
  color: black !important;
}
.toolbar-icon {
  background-color: #efeff0 !important;
  color: #0a2a3b !important;
}
.v-toolbar__content {
  height: auto !important;
}

/* // right-elment */

.goal-item {
  padding-right: 0px !important;
}

.carousel-container {
  padding-left: 0px !important;
}

.goal-item .headline {
  font-size: 28px !important;
  padding-top: 25px;
}
.goal-item .description {
  line-height: 30px;
  padding: 10px 15px;
  font-size: 16px;
}
.goal-item .points-container .v-chip {
  font-size: 16px;
  font-weight: lighter;
}
.bold {
  font-weight: bold;
}

.item-details {
  display: flex;
  justify-content: center;
  flex-direction: row;
}

.item-details .headline {
  text-align: left;
  font-size: 20px !important;
  font-weight: lighter;
  padding-top: 0px;
}
.item-details-container {
  height: 250px;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}

.item-details-container .item-action .points-container .v-chip {
  font-size: 16px;
  font-weight: lighter;
}

.categories-container {
  width: 100%;
}
.categories-container ul {
  padding-left: 0px;
}
.categories-container .link-item {
  display: block;
  margin: 0px;
  font-size: 18px;
  font-weight: bold;
  padding: 7px 20px;
}
.categories-container .link-item:first-child {
  margin-top: 0px;
}
.categories-container .link-item.active {
  background-color: #405966;
  color: #fff;
}
.categories-container .link-item.active a {
  color: #fff;
}
.card-title {
  font-size: 14px;
  color: #888;
  padding: 5px 10px;
}

.card-image {
  height: 175px;
}
.headline.card-title {
  text-align: left;
  color: #0f2a3b;
}
.card-description {
  color: #777;
  padding-left: 10px;
}

.card-footer {
  display: flex;
  justify-content: center;
  border-top: 1px solid #eee;
  margin-top: 10px;
}
.card-footer button.v-btn {
  width: 100%;
}
.like-chip {
  position: absolute;
  top: 4px;
  right: 0px;
}

.v-chip .v-chip__content {
  height: 24px;
}

.v-chip .v-avatar {
  height: 18px !important;
  margin-left: -5px;
  margin-right: 4px;
  min-width: 21px;
  width: 15px !important;
}

.v-footer {
  margin-top: 35px;
}
.page-footer {
  background-color: #0f2a3b;
}
.cursor {
  cursor: pointer;
}
.BG{
  background-image:url("../assets/images/SITEBG.jpg") !important 
}
</style>
