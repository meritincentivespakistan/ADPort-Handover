<template>
  <v-app class="BG">
    <!-- start HEADER -->
    <template>
      <v-toolbar color="white" height="100px">
        <div @click="HomeFn()" style="cursor:pointer;width: 20vw;">
              <img src="@/assets/images/kafu logo.png" width="100px" />
        </div>
        <v-spacer></v-spacer>

        <v-btn  v-if="false" icon class="header-icon">
          <img src="@/assets/images/notification.svg" width="20px">
          <span class="g-point"></span>
        </v-btn>

        <v-btn v-if="false" icon class="header-icon">
          <img src="@/assets/images/gift.svg" width="20px">
          <!-- <span class="g-point"></span> -->
        </v-btn>

        <v-btn v-if="false" flat>messages</v-btn>

        <v-btn v-if="false" flat>admin</v-btn>

        <v-btn v-if="false" flat>reports</v-btn>
        <v-btn flat @click="logoutFn">Logout</v-btn>

        <v-avatar class="header-avatar">
          <img src="@/assets/images/profile.png" alt="John">
          <span class="g-point"></span>
        </v-avatar>
      </v-toolbar>
    </template>

    <headerTemp/>

    <template>
      <v-container grid-list-xl>
        <v-layout row justify-space-between>
          <v-flex xs4>
            <v-card>
              <div class="avatar-container">
                <v-avatar class="card-avatar">
                  <img src="@/assets/images/profile.png" alt="John">
                  <span class="g-point"></span>
                </v-avatar>
              </div>

              <v-card-title primary-title>
                <div>
                  <div class="headline">{{name}}</div>

                  <div class="chip-container">
                    <div class="text-xs-center" v-if="false">
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
                    <div class="text-xs-center" v-if="false">
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
                  <div class="points-container" >
                    <v-chip>{{points}} Points</v-chip>
                  </div>

                  <div class="chip-container" v-if="false">
                    <div class="text-xs-center">
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

          <v-flex xs8>
             <v-layout row justify-space-around>
              <v-flex xs12 class="padding-btm-1">
                <v-card class="Nom-head">
                  <v-card-title>
                    <div>
                      <v-chip color="white" class="nom-size">Select the compaign to start a nomination</v-chip>
                    </div>
                  </v-card-title>
                </v-card>
              </v-flex>
            </v-layout>
            <v-layout row wrap>

              <v-flex xs6 v-for="(compaign,i) in compaigns" :key="i">
                <v-card @click="showCompaign(compaign)" class="compaignCard">
                  <img src="@/assets/images/campaign.jpeg" height="200px" >

                  <v-card-title primary-title>
                    <div>
                      <div class="headline">{{compaign.name}}</div>
                      <span class="grey--text">Click to start nominating people</span>
                    </div>
                  </v-card-title>
                </v-card>
              </v-flex>
              
            </v-layout>
          </v-flex>
        </v-layout>
      </v-container>
    </template>
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
    
      
      userId: -1,
      name: "",
      compaigns:{},
      points:0
    };
  },
  created() {},
  mounted() {
    this.islogged();
    this.name = Cookies.get("userName");
      this.points = Cookies.get("user-points");

    this.getNomination();
  },
  computed: {
    HomeFn() {
      this.$router.push("/");
    }
  },
  watch: {},
  methods: {
    showCompaign(obj){
      console.log('Obj',obj)
      Cookies.set('compValSet',obj.value_set)
      Cookies.set('compName',obj.name)

      this.$router.push("/nomination-start");

    },
    sendUserID(id) {
      $(".user").removeClass("selected");
      $("#user" + id).addClass("selected");
      this.userId = id;
    },
    
    logoutFn() {
      Cookies.set("isLogged", "false");
      this.$router.push("/");
    },
    islogged() {
      if (Cookies.get("isLogged") == "true") {
      } else {
        this.$router.push("/login");
      }
    },
  
    getNomination() {
      this.$store
        .dispatch("getCompaigns")
        .then(resp => {
          console.log("respNN", resp);
          this.compaigns=resp.data.data


        })
        .catch(error => {
          console.log("error", error);
        });
    }
  },
  components: {
    headerTemp,
    footerTemp
  }
};
</script>

<style>
/* base-color: #0f2a3b */
body {
  background-color: #eaeaea;
}
.v-card {
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
  margin-top: 10px;
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
.Nom-head {
  height: 70px !important;
}
.Nom-desc {
  height: 150px !important;
}
.nom-size {
  font-size: 22px;
}
.padding-tp-btm-1 {
  padding-bottom: 1px !important;
  padding-top: 1px !important;
}
.padding-btm-1 {
  padding-bottom: 1px !important;
}
.wrap {
  white-space: unset;
}
.padding-0 {
  padding: 0px !important;
}
.size-12 {
  font-size: 12px;
}
.avatar-search {
  height: 15px !important;
  width: 15px !important;
}
.height-auto {
  height: auto !important;
}
.margin-rt-lf-2 {
  padding-left: 24px;
  padding-right: 24px;
}
.v-tabs__container {
  height: auto !important;
}
.submit-btn {
  background-color: #0f2a3b !important;
}

/*********** file ************/

#file {
  display: block;
  margin: auto;
  position: absolute;
  opacity: 0;
  cursor: pointer;
}
.upload {
  width: 40%;
}
h6 {
  line-height: 2.5 !important;
  color: #999;
}
.selected {
  border: 2px solid red;
}
.compaignCard{
  cursor:pointer;
  text-align: center;
}
.BG{
  background-image:url("../assets/images/SITEBG.jpg") !important 
}
</style>