

<template>
  <v-app class="BG">
    <v-container>
      <v-layout row justify-space-between>
        <v-flex xs6 style="padding-right:20px">
          <v-carousel hide-controls height="800px">
            <v-carousel-item height="auto" v-for="(item,i) in items" :key="i" :src="item.src"></v-carousel-item>
          </v-carousel>
        </v-flex>
        <v-flex xs6>
          <v-layout>
            <v-flex xs12>
              <v-layout>
                <v-flex xs3></v-flex>
                <v-flex xs3 v-if="false">
                  <p style="    padding-top: 13px;">Begin earning Points</p>
                </v-flex>
                <v-flex xs3 v-if="false">
                  <v-btn outline round color="black">Register</v-btn>
                </v-flex>
              </v-layout>
            </v-flex>
            <v-flex 12 xs>
              <img src="@/assets/images/kafu logo.png" width="200px" />
            </v-flex>
          </v-layout>
          <v-layout wrap style="margin-top:9vw"
                    class="input-white"
          >
              
            <v-flex 12 xs class="form-margin">
              <h1>Login</h1>
            </v-flex>
            <v-flex xs12 
            >
              <v-form ref="login" 
              >
                <v-flex xs12>
                  <v-text-field
                    label="Email"
                    :rules="emailRule"
                    outline
                    v-model="emailValue"
                    @keyup.enter.native="loginFn"
                    class="form-margin"
                  ></v-text-field>
                </v-flex>
                <v-flex xs12>
                  <v-text-field
                    :append-icon="show1 ? 'visibility' : 'visibility_off'"
                    label="Password"
                    :rules="passwordRule"
                    outline
                    :type="show1 ? 'text' : 'password'"
                    name="input-10-1"
                    hint="At least 8 characters"
                    counter
                    class="form-margin"

                    @click:append="show1 = !show1"
                    @keyup.enter.native="loginFn"
                    v-model="passwordValue"
                  ></v-text-field>
                </v-flex>
                <v-flex xs12>
                  <v-layout row wrap>
                    <v-flex xs6></v-flex>
                    <v-flex xs6>
                      <v-layout row>
                        <v-flex xs6 >
                          <p v-if="false" style="    padding-top: 13px;">Forgetten Password?</p>
                        </v-flex>
                        <v-flex xs6>
                          <v-btn round color="info" @click="loginFn">Login</v-btn>
                        </v-flex>
                      </v-layout>
                    </v-flex>
                    <v-flex xs12>
                      <div v-if="loginError"
                        class="alert alert-danger"
                        role="alert"
                      >Invalid username or password!</div>
                    </v-flex>
                  </v-layout>
                </v-flex>
              </v-form>
            </v-flex>
          </v-layout>
        </v-flex>
      </v-layout>
    </v-container>
  </v-app>
</template>




<script>
import $ from "jquery";
import Cookies from "js-cookie";

export default {
  name: "ProgramPoints",
  data() {
    return {
      items: [
        {
          src: "../images/1.jpg"
        },
           {
          src: "../images/2.jpg"
        },
           {
          src: "../images/3.jpg"
        }
        ,   {
          src: "../images/4.jpg"
        }
        ,   {
          src: "../images/5.jpg"
        }
        ,   {
          src: "../images/6.jpg"
        }
        ,   {
          src: "../images/7.jpg"
        }
        ,   {
          src: "../images/8.jpg"
        }
        ,   {
          src: "../images/9.jpg"
        }
        ,   
        {
          src: "../images/10.jpg"
        } ,   
        {
          src: "../images/11.jpg"
        } ,   
        {
          src: "../images/12.jpg"
        }
      ],
      show1: false,
      password: "Password",
      passwordValue: "",
      emailValue: "",
      loginDataObj: {
        username: "",
        password: "",
        client_id: "2",
        client_secret: "wTpQyuvvvXq04wKFcSwTybi7JRnTpAlth9VyRLYb",
        grant_type: "password"
      },
      loginError:false,
      emailRule: [v => !!v || "Please enter your Email"],
      passwordRule: [v => !!v || "Please enter your password"]
    };
  },
  created() {},
  mounted() {},
  computed: {},
  watch: {},
  methods: {
    loginFn() {
      this.loginError=false;
      if (this.$refs.login.validate()) {
        this.loginDataObj.username = this.emailValue;
        this.loginDataObj.password = this.passwordValue;
        this.$store
          .dispatch("login", this.loginDataObj)
          .then(resp => {
            console.log("resp", resp);
            Cookies.set("AUTH", resp.data.access_token);
            this.updateProfileData();
            this.loginError=false;

          })
          .catch(error => {
            console.log("error", error);
            this.loginError=true;

          });
      }
    },
    updateProfileData() {
      this.$store
        .dispatch("getProfileData")
        .then(resp => {
          console.log("type", resp);
          Cookies.set("admin-type", resp.data.data.type);
          Cookies.set("programId", resp.data.data.program_id);
          Cookies.set("admin_id", resp.data.data.id);
          Cookies.set("userName", resp.data.data.name);
          Cookies.set("isLogged", true);
          Cookies.set("userId", resp.data.data.id);
          Cookies.set("CurrentUserId", resp.data.data.user_id);
          // Cookies.set("user-points", resp.data.data.current_balance);
          Cookies.set("compValSet", 1);
          /*---- */
          let type =resp.data.data.type;
          this.$store
            .dispatch("getUserPoints",resp.data.data.user_id)
            .then(resp => {
              Cookies.set("user-points", resp.data.data.current_balance);
                if (type === "user") {
            this.$router.push("/nomination-start");

               
          } else {
            // this.$router.push("/programmes/" + resp.data.data.program_id);
          }
            })
            .catch(error => {
              console.log("error", error);
            });
          // if (resp.data.data.type === "user") {
          //   this.$router.push("/nomination-start");

               
          // } else {
          //   // this.$router.push("/programmes/" + resp.data.data.program_id);
          // }
      
        })
     
         
    }
  },
  components: {}
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
.BG{
  background-image:url("../assets/images/LOGINBG.jpg")
}
.input-white{
  background-color: white !important;
  border-radius: 10px
}
.form-margin{
  margin: 10px;
}
</style>
