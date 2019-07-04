

<template>
  <v-app class="BG">
    <!-- start HEADER -->
    <template>
      <v-toolbar color="white" height="100px">
        <div @click="HomeFn()" style="cursor:pointer;width: 20vw;">
          <img src="@/assets/images/kafu logo.png" width="100px">
        </div>
        <v-spacer></v-spacer>
        <v-btn icon v-if="false" class="header-icon">
          <img src="../assets/images/notification.svg" width="20px">
          <span class="g-point"></span>
        </v-btn>
        <v-btn icon v-if="false" class="header-icon">
          <img src="../assets/images/gift.svg" width="20px">
          <!-- <span class="g-point"></span> -->
        </v-btn>
        <v-btn flat v-if="false">messages</v-btn>
        <v-btn flat v-if="false">admin</v-btn>
        <v-btn flat v-if="false">reports</v-btn>
        <v-btn flat @click="logoutFn" >Logout</v-btn>
        <v-btn flat @click="changePasswordFn" >Change Password</v-btn>
        <v-avatar class="header-avatar">
          <img src="@/assets/images/profile.png" alt="John">
          <span class="g-point"></span>
        </v-avatar>
      </v-toolbar>
    </template>
    <headerTemp/>
    <v-container grid-list-xl class="first-container" style="margin-bottom:5%">
      <v-layout row justify-space-between>
        <v-flex xs3>
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
                  <v-chip>{{UserPoints}} Points</v-chip>
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
        <v-flex xs9>
          <v-layout row justify-space-around wrap>
            <v-flex xs12 class="goal-item" >
              <v-card>
                <v-card-title primary-title></v-card-title>
                <v-card-text>
                  <v-layout wrap>
                    
                    <v-flex xs12>
                     <strong> <p class="font-size-18 ">Upon the successful approval of 3 nominations championing the same core value,
                       you will unlock its corresponding badge and receive triple the value of points!</p></strong>
                      <p class="font-size-18 color-special">AD Ports Badges</p>     
                    </v-flex>

                    <v-flex xs4 v-for="(badge,i) in badges" :key="i">
                      <p style="text-align:center; font-size:18px;">
                        <img :src="badge.icon" style="width: 16vw;padding:10px" alt="John">
                      <span style="display: block;">
                        {{badge.name}}
                      </span>
                      </p>
                    </v-flex>
                  </v-layout>
                </v-card-text>
              </v-card>
            </v-flex>
          </v-layout>
        </v-flex>
      </v-layout>
    </v-container>
    <footerTemp/>
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
    <v-dialog v-model="showConfirmModal" max-width="600">
      <v-card class="modalCard">
        <v-card-title class="headline">{{placeOrderTitle}}</v-card-title>
        <v-card-text>{{placeOrderDesc}}</v-card-text>
        <v-card-actions>
          <v-btn block flat @click="showConfirmModal=false">OK</v-btn>
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
     
      initId: -1,
      name: "",
      UserPoints: 0,
      badges:{},
      changePassword:false,
      show1:false,
      show2:false,
      password:'',
      passwordConfirm:'',
      show1: false,
      show2: false,
      searchResult:false,
      submitLoad:false,
      showConfirmModal:false,
      passwordRule: [v => !!v || "Please enter your password"],
    };
  },
  created() {},
  mounted() {
    this.name = Cookies.get("userName");
    this.UserPoints = Cookies.get("user-points");

    this.islogged();
   this.$store.dispatch("getBadges",Cookies.get("userId"))
    .then(resp => {
      this.badges = resp.data.data;
      console.log(this.badges)
      
    })
     .catch(err => {
      
    })

     //user points
     console.log('wwwwwww')
      this.$store
            .dispatch("getUserPoints",Cookies.get("CurrentUserId"))
            .then(resp => {
              Cookies.set("user-points", resp.data.data.current_balance);
              this.UserPoints=resp.data.data.current_balance
           
            })
            .catch(error => {
              console.log("error", error);
            });

 

  },
  computed: {},
  watch: {},
  methods: {
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
    ProductName(name) {
      if (name.length < 45) return name;
      else {
        let slicedName = name.slice(0, 45);
        return slicedName + "...";
      }
    },
    changePasswordFn() {
      this.changePassword = true;
    },
    confirmChange() {
      if (this.$refs.changePassword.validate()) {
        let data = {
          password: this.password,
          password_confirmation: this.passwordConfirm
        };
        this.$store
          //obj.value_set
          .dispatch("changePassword", [Cookies.get("userId"), data])
          .then(resp => {
            console.log("resp", resp);
            this.changePassword = false;
            this.showConfirmModal = true;
            this.placeOrderTitle = "Success";
            this.placeOrderDesc = "Password has been changed";
          })
          .catch(error => {
            console.log("error", error);
            this.changePassword = false;
            this.showConfirmModal = true;
            this.placeOrderTitle = "Failed";
            this.placeOrderDesc = "something went wrong";
          });
      }
    },
    itemAvailable(pts) {
      if (parseInt(this.UserPoints) >= parseInt(pts)) return true;
      else return false;
    },
    getItem(obj) {
      this.showModal = true;
      this.points = obj.value;
      this.productId = obj.id;
    },
    placeOrder() {
      console.log(this.isGift);
      this.isGift ? "" : (this.isGift = 0);
      if (this.$refs.placeOrder.validate()) {
        let obj = {};
        obj.value = parseInt(this.points);
        obj.product_id = parseInt(this.productId);
        obj.account_id = parseInt(Cookies.get("userId"));
        obj.first_name = this.firstName;
        obj.last_name = this.lastName;
        obj.email = this.email;
        obj.phone = this.phone;
        obj.address = this.address;
        obj.city = this.city;
        obj.country = this.country;
        obj.is_gift = this.isGift;

        var form = new FormData();
        form.append("value", this.points);
        form.append("product_id", this.productId);
        form.append("account_id", Cookies.get("userId"));
        console.log(obj);
        this.disablePlace = true;
        this.placeOrderLoader = true;

        this.$store
          .dispatch("placeOrder", obj)
          .then(resp => {
            console.log("resp", resp);
            this.showModal = false;
            this.showConfirmModal = true;
            this.placeOrderTitle = "Thank you! Your order has been placed";
            this.placeOrderDesc =
              "Your order will be delivered to your address soon";
            console.log("rrrr", resp.data.data);
            this.disablePlace = false;
            this.placeOrderLoader = false;

            // updatepointes
            this.$store
              .dispatch("getUserPoints", resp.data.data.user.id)
              .then(resp => {
                Cookies.set("user-points", resp.data.data.current_balance);
                this.UserPoints = Cookies.get("user-points");
              })
              .catch(error => {
                console.log("error", error);
              });
          })
          .catch(err => {
            console.log("err", err);
            this.showModal = false;
            this.showConfirmModal = true;
            this.disablePlace = false;
            this.placeOrderLoader = false;

            this.placeOrderTitle = "OOOOPs, something went wrong ";
            this.placeOrderDesc =
              "Please try again";
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
    HomeFn() {
      this.$router.push("/");
      console.log("ssss");
    },
    showCategory(id) {
      $(".list-group-item").removeClass("active");
      $("#cat" + id).addClass("active");
      this.$store
        .dispatch("getProducts", id)
        .then(resp => {
          console.log("resp", resp);
          this.products = resp.data.data;
          console.log(this.products);
        })
        .catch(err => {
          console.log("err", err);
        });
    },
    showSearchModal() {
      if (this.shouldICallAllProducts) {
        this.SearchLoad = true;
        this.$store
          .dispatch("getAllProducts")
          .then(resp => {
            this.Allproducts = resp.data.data;
            this.filteredProducts = resp.data.data;

            this.searchModal = true;
            this.SearchLoad = false;
            this.shouldICallAllProducts = false;
          })
          .catch(err => {
            console.log("err", err);
            this.SearchLoad = false;
          });
      } else {
        this.searchModal = true;
      }
    },
    setGoal(product) {
      let obj = {
        product_id: product.id
      };
      this.$store
        .dispatch("SetItemGoal", [Cookies.get("userId"), obj])
        .then(resp => {
          this.searchModal = false;
          this.goalItemProduct = product;
        })
        .catch(err => {
          console.log("err", err);
        });
    },
    searchProductFn() {
      this.filteredProducts = this.Allproducts;
      this.filteredProducts = this.filteredProducts.filter(item => {
        return item.name.toLowerCase().includes(this.searchKeyword);
      });
      console.log("this.f", this.filteredProducts);
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

.logo-image {
  max-height: 60px;
}

.container.first-container {
  /* height: 245px; */
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
.active {
  background-color: #0a2a3b;
  color: white;
}

/****************    sidebar    ********************/

#sidebar {
  min-width: 280px;
  max-width: 280px;
  background: #fff;
  color: #002a3a;
  transition: all 0.3s;
}
#sidebar .sidebar-header {
  max-height: 50px;
  padding: 5px 20px;
}
#sidebar.active {
  min-width: 80px;
  max-width: 80px;
  text-align: center;
}

#sidebar.active .sidebar-header h3 {
  display: none;
}

#sidebar.active .sidebar-header strong {
  display: block;
}

#sidebar ul li a {
  text-align: left;
}

#sidebar.active ul li a {
  padding: 20px 10px;
  text-align: center;
  font-size: 0.85em;
}

#sidebar.active ul li a i {
  margin-right: 0;
  display: block;
  font-size: 1.8em;
  margin-bottom: 5px;
}

#sidebar.active ul ul a {
  padding: 10px !important;
}

#sidebar.active .dropdown-toggle::after {
  top: auto;
  bottom: 10px;
  right: 50%;
  -webkit-transform: translateX(50%);
  -ms-transform: translateX(50%);
  transform: translateX(50%);
}

#sidebar .sidebar-header {
  padding: 5px 20px;
  background: #fff;
}

#sidebar .sidebar-header strong {
  display: none;
  font-size: 1.8em;
}

#sidebar ul.components {
  padding: 20px 0;
  /* border-bottom: 1px solid #002A3A; */
}

#sidebar ul li a {
  padding: 15px 10px;
  font-size: 1.1em;
  display: block;
  color: #b2b2b2;
}

#sidebar ul li a:hover {
  color: #002a3a;
  background: #fff;
  border-right: 3px solid #002a3a;
}

#sidebar ul li a i {
  margin-right: 10px;
}

#sidebar ul li.active > a,
a[aria-expanded="true"] {
  color: #002a3a;
  background: #fff;
}

a[data-toggle="collapse"] {
  position: relative;
}

.dropdown-toggle::after {
  display: block;
  position: absolute;
  top: 50%;
  right: 20px;
  transform: translateY(-50%);
}

ul ul a {
  font-size: 0.9em !important;
  padding-left: 30px !important;
  background: #fff;
}

a.article,
a.article:hover {
  background: #002a3a !important;
  color: #fff !important;
}

/* ---------------------------------------------------
    CONTENT STYLE
----------------------------------------------------- */

#content {
  width: 100%;
  padding: 20px;
  min-height: 100vh;
  transition: all 0.3s;
}

/* ---------------------------------------------------
    MEDIAQUERIES
----------------------------------------------------- */

@media (max-width: 768px) {
  #sidebar {
    min-width: 80px;
    max-width: 80px;
    text-align: center;
    margin-left: -80px !important;
  }
  .dropdown-toggle::after {
    top: auto;
    bottom: 10px;
    right: 50%;
    -webkit-transform: translateX(50%);
    -ms-transform: translateX(50%);
    transform: translateX(50%);
  }
  #sidebar.active {
    margin-left: 0 !important;
  }
  #sidebar .sidebar-header h3 {
    display: none;
  }
  #sidebar .sidebar-header strong {
    display: block;
  }
  #sidebar ul li a {
    padding: 20px 10px;
  }
  #sidebar ul li a span {
    font-size: 0.85em;
  }
  #sidebar ul li a i {
    margin-right: 0;
    display: block;
  }
  #sidebar ul ul a {
    padding: 10px !important;
  }
  #sidebar ul li a i {
    font-size: 1.3em;
  }
  #sidebar {
    margin-left: 0;
  }
  #sidebarCollapse span {
    display: none;
  }
}

/* svg */
.svg-icon {
  width: 16px !important;
  margin-right: 15px;
  color: #b2b2b2;
}
#sidebar li span {
  display: inline-block;
}
.BG {
  background-image: url("../assets/images/SITEBG.jpg") !important;
}
.center-align {
  text-align: center;
}
.height-4 {
  height: 4vw;
  font-size: 16px !important;
}
.font-size-18 {
  font-size: 18px;
}
.fancy{
     font-size: 22px;
    color: gray;
    margin-left: 101px;
    margin-top: -47px;
}

.type-logo{
    width: 9vw;
    position: relative;
    top: -8vw;
    left: -8.7vw;
}
.color-special{
  color: darkgreen;
  font-size: 22px
}
</style>
