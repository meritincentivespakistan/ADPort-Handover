<template>
  <v-app class="BG">
    <!-- start HEADER -->
    <template>
      <v-toolbar color="white" height="100px">
        <div @click="HomeFn()" style="cursor:pointer;width: 20vw;">
          <img src="@/assets/images/kafu logo.png" width="100px">
        </div>
        <v-spacer></v-spacer>

        <v-btn v-if="false" icon class="header-icon">
          <img src="@/assets/images/notification.svg" width="20px">
          <span class="g-point"></span>
        </v-btn>

        <v-btn v-if="false" icon class="header-icon">
          <img src="@/assets/images/gift.svg" width="20px">
          <!-- <span class="g-point"></span> -->
        </v-btn>

        <v-btn flat v-if="false">messages</v-btn>

        <v-btn flat v-if="false">admin</v-btn>

        <v-btn flat v-if="false">reports</v-btn>
        <v-btn flat @click="logoutFn">Logout</v-btn>
        <v-btn flat @click="changePasswordFn">Change Password</v-btn>

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
                  <div class="points-container">
                    <v-chip>{{points}} Points</v-chip>
                  </div>

                  <div class="chip-container" v-if="false">
                    <div class="text-xs-center">
                      <v-chip color="white">
                        <v-avatar></v-avatar>128 nominations
                      </v-chip>
                    </div>
                    <div class="text-xs-center">
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
                      <v-chip color="white" class="nom-size">{{compName}}</v-chip>
                    </div>
                  </v-card-title>
                </v-card>
              </v-flex>
            </v-layout>
            <v-layout row justify-space-around>
              <v-flex xs12 class="padding-tp-btm-1">
                <v-card class="Nom-desc">
                  <v-card-title>
                    <div>Has one of your colleagues done something that you think deserves a mention? If you think that someone has demonstrated one of the Company Values in something they have done, why not nominate them to receive a reward? Simple fill in the details of your nomination below and choose the level of your nomination, and it will be sent to their line manager for approval. If approved, your colleague will be rewarded with some points for their Merite account.</div>
                  </v-card-title>
                </v-card>
              </v-flex>
            </v-layout>
              <v-form ref="nominate" >
            
            <v-layout row justify-space-around>
              <v-flex xs12 class="padding-tp-btm-1">
                <v-card class="height-auto">
                  <v-card-title primary-title>
                    <div>
                      <div class="points-container">
                        <v-text-field
                          light
                          solo
                          prepend-icon="search"
                          placeholder="search by user"
                          v-model="searchKeyword"
                          @keyup="searchUsersFn"
                        ></v-text-field>
                      </div>
                    </div>
                  </v-card-title>
                  <v-layout row wrap class=" scroll-y margin-rt-lf-2"  style="max-height: 400px" >
                    <v-flex col xs12 md4 v-for="(user,i) in usersFromSearch" :key="i">
                      <div :id="'user'+user.account_id" class="user" @click="sendUserID(user.account_id)">
                        <v-card class="height-auto">
                          <div class="avatar-container">
                            <v-avatar class="card-avatar">
                              <img src="@/assets/images/profile.png" alt="John">
                              <span class="g-point"></span>
                            </v-avatar>
                          </div>

                          <v-card-title primary-title>
                            <div>
                              <div class="headline">{{user.name}}</div>
                            </div>
                          </v-card-title>
                          <v-divider light></v-divider>

                          <v-card-action>
                            <v-btn block flat color="error" v-if="false">Remove</v-btn>
                          </v-card-action>
                        </v-card>
                      </div>
                    </v-flex>
                    <v-flex col xs6 v-if="searchResult">
                      <v-card class="height-auto">
                        <v-card-title primary-title>No users match your search data</v-card-title>
                      </v-card>
                    </v-flex>
                  </v-layout>
                </v-card>
              </v-flex>
            </v-layout>
            <v-layout row justify-space-around>
              <v-flex xs12>
                <v-card flat  style="height:600px">
                  <v-card-title primary-title>
                    <div class="points-container">Please select the core value for your nomination</div>
                  </v-card-title>
                    <v-tabs
                      v-model="active"
                      centered
                      color="transparent"
                    >
                      <v-tabs-slider></v-tabs-slider>
                      <v-tab v-for="(value,i) in values" :key="i" :href="'#tab'+i" class="primary--text">
                        <img :src="value.logo" style="width: 80px;" @click="setNewVal(value)">
                      </v-tab>
                    </v-tabs>

                    <v-tabs-items v-model="active" class="white elevation-1">
                      <v-tab-item
                         v-for="(value,i) in values" :key="i"
                        :value="'tab' + i"
                      >
                        <v-card>
                          <v-card-text class="text-center">
                            <h5>{{value.name}}</h5>
                            <p>{{value.description}}</p>
                          </v-card-text>
                        </v-card>
                      </v-tab-item>
                    </v-tabs-items>

                    
                </v-card>
              </v-flex>
            </v-layout>
            <v-layout row justify-space-around>
              <v-flex xs12>
                <v-card style="height:600px">
                  <v-card-title primary-title>
                    <div class="points-container">Please select the level for your nomination</div>
                  </v-card-title>

                    <v-tabs
                     v-model="active2"
                      fixed-tabs
                      color="transparent"
                    >
                      <v-tabs-slider></v-tabs-slider>
                      <v-tab v-for="(level,i) in levels" :key="i" :href="'#level'+i" class="primary--text">
                        <img
                          @click="setLevel(level)"
                          src="../static/images/01ic.png"
                          style="width: 80px;"
                        >
                      </v-tab>
                    </v-tabs>

                    <v-tabs-items v-model="active2" class="white elevation-1">
                      <v-tab-item
                         v-for="(level,i) in levels" :key="i"
                        :value="'level' + i"
                      >
                        <v-card>
                          <v-card-text class="text-center">
                            <h5>{{level.name}}</h5>
                            <p>{{level.points}} Points</p>
                          </v-card-text>
                        </v-card>
                      </v-tab-item>
                    </v-tabs-items>

                  </v-card>
              </v-flex>
            </v-layout>
            <v-layout row justify-space-around>
              <v-flex xs12>
                <v-card class="height-auto">
                  <v-card-title primary-title></v-card-title>
                  <v-layout row wrap class="margin-rt-lf-2">
                    <v-flex xs12>
                      <p>Give reason for nomination</p>
                      <v-textarea :rules="reasonRule" label="Max 500 characters" v-model="reason"></v-textarea>
                    </v-flex>
                    <v-flex xs12 v-if="false">
                      <p>Upload any supporting documentation to support your nomination</p>
                      <v-btn
                        @click="removeName"
                        round
                        outline
                        dark
                        depressed
                        small
                        color="#053A6E"
                        class="upload"
                      >
                        {{ fileName }}
                        <input
                          @change="getFile"
                          type="file"
                          name="file"
                          id="file"
                          ref="file"
                        >
                      </v-btn>
                    </v-flex>
                    <v-flex xs12>
                      <v-btn
                        round
                        class="submit-btn"
                        :disabled="disableUploadBtn"
                        block
                        
                        @click="sendNomination"
                      >Submit
                      <v-progress-circular v-if="submitLoad" indeterminate color="green"></v-progress-circular>

                      </v-btn>
                    </v-flex>
                  </v-layout>
                </v-card>
              </v-flex>
            </v-layout>
              </v-form >

          </v-flex>
        </v-layout>
      </v-container>
    </template>
    <footerTemp/>
    <v-dialog v-model="showConfirmModal" max-width="600">
      <v-card class="modalCard">
        <v-card-title class="headline">{{placeOrderTitle}}</v-card-title>
        <v-card-text>{{placeOrderDesc}}</v-card-text>
        <v-card-actions>
          <v-btn block flat @click="showConfirmModal=false">OK</v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
      <v-dialog v-model="changePassword" max-width="600">
      <v-card style="height:350px !important" >
        <v-card-title class="headline">Change Password</v-card-title>
        <v-card-text>
              <v-form ref="changePassword" >

          <v-text-field
                    :append-icon="show1 ? 'visibility' : 'visibility_off'"
                    label="New Password"
                    :rules="passwordRule"
                    outline
                    :type="show1 ? 'text' : 'password'"
                    name="input-10-1"
                    hint="At least 8 characters"
                    counter
                    class="form-margin"

                    @click:append="show1 = !show1"
                    @keyup.enter.native="confirmChange"
                    v-model="password"
                  ></v-text-field>
                  <v-text-field
                    :append-icon="show2 ? 'visibility' : 'visibility_off'"
                    label="Confirm Password"
                    :rules="passwordRule"
                    outline
                    :type="show2 ? 'text' : 'password'"
                    name="input-10-1"
                    hint="At least 8 characters"
                    counter
                    class="form-margin"

                    @click:append="show2 = !show2"
                    @keyup.enter.native="confirmChange"
                    v-model="passwordConfirm"
                  ></v-text-field>
              </v-form > 

        </v-card-text>
        <v-card-actions>
          <v-btn block flat @click="confirmChange">Change</v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
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
      active: null,
      active2: null,
      reason: "",
      text:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      file: "",
      fileName: "Choose a file!",
      disableUploadBtn: false,
      points: [7000, 14000, 42000],
      searchKeyword: "",
      searchData: {},
      usersFromSearch: [],
      userId: -1,
      name: "",
      values: {},
      levels: {},
      valueId: -1,
      levelValue: -1,
      compName: "",
      showConfirmModal: false,
      placeOrderTitle: "",
      placeOrderDesc: "",
      points:0,
      changePassword:false,
      password:'',
      passwordConfirm:'',
      show1: false,
      show2: false,
      searchResult:false,
      submitLoad:false,

      passwordRule: [v => !!v || "Please enter your password"],
      reasonRule: [v => !!v || "Please enter your reason"]

    };
  },
  created() {},
  mounted() {
    this.islogged();
    this.name = Cookies.get("userName");
    this.initTypesLevels();
    this.compName = Cookies.get("compName");
      this.points = Cookies.get("user-points");
       //user points
      this.$store
            .dispatch("getUserPoints",Cookies.get("CurrentUserId"))
            .then(resp => {
              Cookies.set("user-points", resp.data.data.current_balance);
              this.points=resp.data.data.current_balance
           
            })
            .catch(error => {
              console.log("error", error);
            });

  },
  computed: {
    HomeFn() {
      this.$router.push("/");
    }
  },
  watch: {},
  methods: {
    changePasswordFn(){
        this.changePassword=true
    },
    confirmChange(){
      if (this.$refs.changePassword.validate()) {
         let data={
        "password":this.password,
        "password_confirmation":this.passwordConfirm
      }
       this.$store
        //obj.value_set
        .dispatch("changePassword", [Cookies.get('userId'),data])
        .then(resp => {
          console.log("resp", resp);
          this.changePassword=false;
          this.showConfirmModal=true
           this.placeOrderTitle = "Success";
          this.placeOrderDesc = "Password has been changed";
        })
        .catch(error => {
          console.log("error", error);
          this.changePassword=false;
          this.showConfirmModal=true
           this.placeOrderTitle = "Failed";
          this.placeOrderDesc = "something went wrong";
        });
      }
     
    },
    setNewVal(obj) {
      this.valueId = obj.id;
      this.$store
        //obj.value_set
        .dispatch("getCompaignlevels", obj.value_set)
        .then(resp => {
          console.log("resp", resp);
          this.levels = resp.data.data;
        })
        .catch(error => {
          console.log("error", error);
        });
      console.log("valueId", this.valueId);
    },
    setLevel(obj) {
      console.log('level',obj)
      this.levelValue = obj.id;
    },
    initTypesLevels() {
      this.$store
        .dispatch("getCompaignValues")
        .then(resp => {
          console.log("resp", resp);
          this.values = resp.data.data;
              this.valueId =  this.values[0].id;

          this.$store
            //obj.value_set
            .dispatch("getCompaignlevels", resp.data.data[0].value_set)
            .then(resp => {
              console.log("resp", resp);
              this.levels = resp.data.data;
              this.levelValue =  this.levels[0].id;

            })
            .catch(error => {
              console.log("error", error);
            });
        })
        .catch(error => {
          console.log("error", error);
        });
    },
    sendUserID(id) {
      console.log('ww')
      $(".user").removeClass("selected");
      $("#user" + id).addClass("selected");
      this.userId = id;
    },
    searchUsersFn() {
      let form = new FormData();
      form.append("program_id", 1);
      form.append("keyword", this.searchKeyword);

      if (this.searchKeyword.length > 2) {
        this.$store
          .dispatch("getUsers", form)
          .then(resp => {
            console.log("resp", resp);
            this.usersFromSearch = resp.data.data;
            if(this.usersFromSearch.length==0){
              this.searchResult=true
            }
            else{
              this.searchResult=false

            }
          })
          .catch(error => {
            console.log("error", error);
          });
      }
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
    removeName() {
      this.fileName = this.file ? this.file["name"] : "Choose a file!";
      // this.file = "";
      // this.disableUploadBtn = true;
    },
    getFile() {
      this.file = this.$refs.file.files[0];
      this.removeName();
    },
    sendNomination() {
      // this.disableUploadBtn = true;
      if (this.$refs.nominate.validate()) {
         var form = new FormData();
      form.append("user", this.userId);
      form.append("account_id", Cookies.get("userId"));
      form.append('nomination_id',Cookies.get('compValSet'))
      form.append("value", this.valueId);
      form.append("points", this.levelValue);
      form.append("reason", this.reason);
      form.append("attachments", this.file);
      console.log(this.userId, Cookies.get("userId"), this.valueId,this.levelValue,this.reason,Cookies.get('compValSet'))
        this.disableUploadBtn=true
          this.submitLoad=true

      this.$store
        .dispatch("createNomination", form)
        .then(resp => {
          console.log("resp", resp);
          this.disableUploadBtn = false;
          this.showConfirmModal = true;
          this.placeOrderTitle = "Success";
          this.placeOrderDesc = "Your nomination sent successfully! ";

          this.disableUploadBtn=false;
          this.usersFromSearch=[];
          this.searchResult=false
          this.$refs.nominate.reset()
          window.scrollTo(0,0);
          this.submitLoad=false
        })
        .catch(error => {
          console.log("error", error);
          this.disableUploadBtn = false;
          this.showConfirmModal = true;
          this.placeOrderTitle = "Failed";
          this.placeOrderDesc = "something went wrong! try again";
          this.submitLoad=false

          
        });
      }
     
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
  height: 100px !important;
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
  color: white !important
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
.v-card.modalCard {
  height: 13vw !important;
}
.BG{
  background-image:url("../assets/images/SITEBG.jpg") !important 
}
.v-btn--disabled{
  background-color: gray !important
}
</style>