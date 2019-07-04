<template>
  <v-app>
    <script src="//platform.linkedin.com/in.js" data-n-head="true">
      api_key: 78iwfs7ecwyik9
      authorize: true
    </script>
    
    <v-container :fluid="false">
      <!-- login section -->
      <v-layout row v-show="loginShow">
        <v-flex col xs12 md4>
          <slider />
        </v-flex>
        <v-flex col xs12 md8>
          <v-container py-0>
            <v-layout row>
              <!-- login header -->
              <v-flex col xs12>
                <h2 class="jbzColor HeadTitle">Login</h2>
              </v-flex>

              <!-- social login -->
              <v-flex col xs12>
                <div class="socialContainer">
                  <h4 class="jbzColor sunHeadTitle">Login via</h4>
                  <div class="socialBtn">
                    <v-btn dark color="#fff" depressed @click="checkLinked()">
                      <v-icon color="#0077b5">fab fa-linkedin-in</v-icon>
                    </v-btn>
                    <v-btn dark color="#fff" depressed @click=" fbOnSignUp(userSocialMail)">
                      <v-icon id="facebookIcon" color="#3b5998">fab fa-facebook</v-icon>
                    </v-btn>
                    <v-btn dark color="#fff" depressed>
                      <div id="google-signin-button" class="google_home_signup"></div>
                      <v-icon id="googleIcon" color="#dc4e41">fab fa-google</v-icon>
                    </v-btn>
                  </div>
                </div>
              </v-flex>
            </v-layout>
            <v-divider></v-divider>
            <div :class="resetClass" role="alert" v-show="emailStatus">
              {{mailState}}
            </div>
            <!-- easy login with onputs -->
            <v-layout row>
              <v-flex col xs12>
                <v-form ref="loginform">
                  <v-text-field autocomplete="on" label="E-Mail *" v-model="email" type="email" flat box
                    :rules="rules.email" @keyup.enter="submitLogin"></v-text-field>
                  <span v-if="emailMsg==true" class="errorStyle">{{emailError}}</span>
                  <v-text-field label="Password *" v-model="password" flat box :type="show1 ? 'text' : 'password'"
                    @keyup.enter="submitLogin" :append-icon="show1 ? 'visibility_off' : 'visibility'"
                    @click:append="show1 = !show1" :rules="rules.password"></v-text-field>
                  <span v-if="passwordMsg==true" class="errorStyle">{{passwordError}}</span>
                </v-form>
              </v-flex>
            </v-layout>
            <!-- login footer -->
            <v-layout row>
              <!-- <v-flex col xs0 sm0 md2></v-flex> -->
              <!-- <v-flex col xs12 sm12> -->
              <v-container py-0>
                <v-layout row>
                  <v-flex col xs5 sm5>
                    <v-checkbox label="Remember me" color="#053A6E" v-model="checkPrivacyPlicy"
                      class="privacyPolicyCheck"></v-checkbox>
                  </v-flex>
                  <v-flex col xs5 sm3>
                    <a class="forgetBtn" @click="disableActive">Forget password?</a>
                  </v-flex>
                  <v-flex col xs2 sm3>
                    <v-btn depressed large round color="#053A6E" dark class="createAccountBtn" @click="submitLogin()">
                      Login</v-btn>
                  </v-flex>
                </v-layout>
              </v-container>
              <!-- </v-flex> -->
            </v-layout>
          </v-container>
        </v-flex>
      </v-layout>

      <!-- forget password section -->
      <v-layout row v-show="forgetShow">
        <v-flex col xs12 md4>
          <v-card flat class="sliderCard">
            <v-card-title>
              <v-layout row>
                <v-flex xs5 sm5 md12>
                  <img src="@/assets/images/SliderImage01.svg" class="SliderImages">
                </v-flex>
                <v-flex xs7 sm7 md12></v-flex>
              </v-layout>
              <v-layout row></v-layout>
            </v-card-title>
          </v-card>
        </v-flex>
        <v-flex col xs12 md8>
          <v-container py-0>
            <v-layout row>
              <!-- login header -->
              <v-flex col xs12>
                <h2 class="jbzColor HeadTitle">Send Email</h2>
              </v-flex>
            </v-layout>
            <v-divider></v-divider>
            <div :class="resetClass" role="alert" v-show="emailStatus">
              {{mailState}}
            </div>
            <!-- reset password input -->
            <v-layout row>
              <v-flex col xs12>
                <v-form ref="forgetPasswordForm">
                  <v-text-field label="E-Mail" v-model="resetEmail" type="email *" flat box :rules="rules.email"
                    @keyup.enter="submitForgetPassword"></v-text-field>
                  <!-- <span v-if="emailMsg==true" class="errorStyle">{{emailError}}</span> -->
                </v-form>
              </v-flex>
            </v-layout>
            <!-- reset password footer -->
            <v-layout row>
              <!-- <v-flex col xs0 sm0 md2></v-flex> -->
              <!-- <v-flex col xs12 sm12> -->
              <v-container py-0>
                <v-layout row>
                  <v-flex col xs5 sm5></v-flex>
                  <v-flex col xs2 sm3>
                    <v-btn depressed large round color="#053A6E" dark id="backBtn" @click="disableActive()">back</v-btn>
                  </v-flex>
                  <v-flex col xs2 sm3>
                    <v-btn depressed large round color="#053A6E" dark class="createAccountBtn"
                      @click="submitForgetPassword()">send</v-btn>
                  </v-flex>
                </v-layout>
              </v-container>
              <!-- </v-flex> -->
            </v-layout>
          </v-container>
        </v-flex>
      </v-layout>

    </v-container>
    <v-dialog v-model="showValidationDialog" max-width="300">
      <v-card flat>
        <v-toolbar card>
          <h4 class="ToolBarText">Something is Wrong !</h4>
        </v-toolbar>
        <v-card-text>
          {{error_Validation}}
        </v-card-text>
        <v-card-actions>
          <v-spacer></v-spacer>
          <v-btn color="#053A6E" dark flat @click="showValidationDialog=false">Got it</v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>

    <v-dialog v-model="addNewMail" persistent max-width="500">
      <v-card class="socailMailCard">
        <v-card-title class="headline">Add an email to continue registration</v-card-title>
        <v-card-text>
          <v-text-field v-model="userSocialMail" flat box label="Email" :rules="rules.email"></v-text-field>
        </v-card-text>
        <v-card-actions>
          <v-spacer></v-spacer>
          <v-btn round outline dark depressed small color="#053A6E" @click="addNewMail=false">Discard</v-btn>
          <v-btn round dark depressed small color="#053A6E" @click="fbOnSignUp(userSocialMail)">Save</v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
  </v-app>
</template>
<script>
  import slider from '@/components/common/slider.vue'
  import cookie from "js-cookie";
  export default {
    components: {
      slider
    },
    data() {
      return {
        loginTrigger: true,
        show1: false,
        show2: false,
        emailMsg: false,
        passwordMsg: false,
        sliderShow: true,
        loginShow: true,
        forgetShow: false,
        emailStatus: false,
        //--------------------------------------------------------
        //              BINDING VARIABLES
        //--------------------------------------------------------
        email: "",
        resetEmail: "",
        emailError: "dadasdas",
        mailState: "",
        password: "",
        passwordError: "gfhdghd",
        firstname: "",
        lastname: "",
        type: "",
        providerID: "",
        provider_name: "",
        addNewMail: false,
        userSocialMail: null,

        socialFirstName: "",
        socialLastName: "",
        socialEmail: "",
        //--------------------------------------------------------
        //              VALIDATION RULES
        //--------------------------------------------------------
        rules: {
          email: [
            v => !!v || "Please enter your email address",
            v =>
              /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,24}))$/
                .test(
                  v
                ) || `Please enter a valid email address 'ex: name@domain.com'`
          ],
          password: [
            v => !!v || "Password is required",
            v =>
              v.length >= 8 ||
              "Password must be greater than or equal 8 characters",
            v =>
              v.length >= 8 ||
              "Password must be less than or equal 255 characters",
            v =>
              /^(?=.*[A-Za-z])(?=.*\d).+$/.test(v) ||
              "Password must contain letters and numbers",

          ]
        },
        //--------------------------------------------------------
        //              UI VARIABLES
        //--------------------------------------------------------
        personalColor: "#053A6E",
        personalDark: true,
        //--------------------------------------------------------
        companyColor: "#fff",
        companyDark: false,
        //--------------------------------------------------------
        responsive: false,
        checkPrivacyPlicy: false,
        resetClass: "alert alert-danger",
        //--------------------------------------------------------
        showValidationDialog: false,
        error_Validation: "",
      };
    },
     mounted() {
      gapi.signin2.render("google-signin-button", {
        onsuccess: (user) => {
          this.onSignIn(user);
        },
        onfailure: error => {

          this.showValidationDialog = true;
          this.error_Validation = "Can't Catch Google Account"
        }
      });
    },
    methods: {
      createNewAccount() {
        this.$router.push('/sign-up')
      },
      disableActive: function () {
        this.loginShow = !(this.loginShow);
        this.forgetShow = !(this.forgetShow);
        this.sliderShow = true;
        this.resetInputs();
      },
      enableActive: function () {
        this.isActive = true;
        this.emailStatus = false;
        this.resetInputs();
      },
      submitLogin: function () {
        if (this.$refs.loginform.validate()) {
          var form = new FormData();
          form.append("username", this.email);
          form.append("password", this.password);
          form.append("grant_type", "password");
          form.append("client_id", "6");
          form.append("remember_me", this.checkPrivacyPlicy);
          form.append(
            "client_secret",
            "iWonSPG8BWep8FCiWvUk5AlzabYQYz1ZqomqnLyT"
          );
          form.append("scope", "");
          this.$store
            .dispatch("loginService", form)
            .then(resp => {
              var date = new Date();
              var spentTime = date.getSeconds();
              cookie.set("expires_in", resp.expires_in);
              if (this.checkPrivacyPlicy == true) {
                cookie.set("setUserEmail", this.email);
                cookie.set("setUserPassword", this.password);
              }
              this.$store
                .dispatch("checkAuthToken", resp.access_token)
                .then(res => {
                  $("#login").modal("hide");
                  this.$store.commit("set_accountID", res.data.account_id);
                  if (res["data"]["account_type_id"] == 1) {
                    this.$store.commit("setType", "user");
                    this.$store.commit("setSlug", res.data.slug);
                    var usernameUrl = '/' + res.data.slug;
                    this.$router.push(usernameUrl);
                  } else {
                    this.$store.commit("setType", "company");
                    this.$store.commit("setSlug", res.data.slug);
                    this.$router.push("/company/"+res.data.slug);
                    this.$store.commit("setIsAffiliate", res.data.is_affiliate);
                  }
                })
                .catch(error => {
                  console.log(
                    "error checkAuthToken from initAuth from middleware",
                    error
                  );
                });
            })
            .catch(error => {
              console.log('tag error', error.data.error);
              if (error.data.error == "invalid_credentials") {
                this.resetClass = "alert alert-danger"
                this.emailStatus = true;
                this.mailState = "wrong email or password."
              } else {
                this.resetClass = "alert alert-danger"
                this.emailStatus = true;
                this.mailState = "There is something wrong ,please try again."
              }
              setTimeout(() => {
                this.emailStatus = false;
              }, 5000);
            });
        } else { }
      },

      submitForgetPassword: function () {
        if (this.$refs.forgetPasswordForm.validate()) {
          var form = new FormData();
          form.append("email", this.resetEmail);
          this.$store
            .dispatch("sendResetEmail", form)
            .then(resp => {
              this.resetClass = "alert alert-success";
              this.emailStatus = true;
              this.mailState =
                "An Email has been sent to your Email account, check your mail!";
              setTimeout(() => {
                this.emailStatus = false;
              }, 3000);
            })
            .catch(error => {
              this.resetClass = "alert alert-danger";
              this.emailStatus = true;
              if (error.status == 422) {
                this.mailState = "The given email is invalid";
              } else {
                this.mailState = "something went wrong, please check your mail";
              }
              setTimeout(() => {
                this.emailStatus = false;
                $("#login").modal("hide");
              }, 3000);
            });
        } else { }
      },
      onSubmit() {
        var form = new FormData();
        form.append("first_name", this.firstname);
        form.append("last_name", this.lastname);
        form.append("email", this.email);
        form.append("provider_user_id", this.providerID);
        form.append("provider_name", this.provider_name);
        //call join now service
        this.$store
          .dispatch("formService", form)
          .then(resp => {
            this.$router.push("/resume/edit");
          })
          .catch(error => {
            this.submitLoadingShow = false;
            this.disableSubmitBtn = false;
            this.loginPop = false;
            if (error.status == 422) {
              this.emailAlreadyExistsMsg = "The email has already been taken";
              $("#errorMsg").modal("show");
            }
          });
        this.providerID = "";
        this.provider_name = "";
      },
      resetInputs() {
        this.email = "";
        this.password = "";
        this.resetEmail="";
        this.$refs.loginform.resetValidation();
        this.$refs.forgetPasswordForm.resetValidation();
      },
      socialSubmit() {
        var form = new FormData();
        form.append("first_name", this.socialFirstName);
        form.append("last_name", this.socialLastName);
        form.append("email", this.socialEmail);

        if (this.provider_name) {
          form.append("provider_user_id", this.providerID);
          form.append("provider_name", this.provider_name);
        }

        this.$store.dispatch("formService", form).then(resp => {
          cookie.set('token', resp.token);
          this.$store
            .dispatch("checkAuthToken", resp.token)
            .then(res => {
              console.log("res.data.account_id", res.data.account_id)
              this.$store.commit("set_accountID", res.data.account_id);
              if (res["data"]["account_type_id"] == 1) {
                this.$store.commit("setType", "user");
                this.$store.commit("setSlug", res.data.slug);
                this.$router.push("/profile/public");
              } else {
                this.$store.commit("setType", "company");
                this.$store.commit("setSlug", res.data.slug);
                this.$router.push("/company");
                this.$router.push("/");
              }
            })
            .catch(error => {
              console.log(
                "error checkAuthToken from initAuth from middleware",
                error
              );
            });
        }).catch(error => {
          this.showValidationDialog = true;
          this.error_Validation = error.data.errors.email[0];
          console.log("error===", error);
          if (error.status == 422) {
            if (error.data.errors.email) {
              this.addNewMail = true;
            } else {
              this.showValidationDialog = true;
              this.error_Validation = error.data.errors.email[0];
            }
          }
        });
        this.providerID = "";
        this.provider_name = "";
      },
      fbOnSignUp(userEmail) {
        FB.login(response => {
          if (response.status === "connected") {
            FB.api("/me", {
              fields: "id,email,first_name,last_name,name"
            },
              response => {
                this.socialFirstName = response.first_name;
                this.socialLastName = response.last_name;
                this.type = "facebook";
                this.providerID = response.id;
                this.provider_name = "facebook";
                if (response.email) {
                  this.socialEmail = response.email;
                  this.socialSubmit();
                } else {
                  if (userEmail) {
                    this.socialEmail = userEmail;
                    this.socialSubmit();
                  } else {
                    this.socialSubmit();
                  }
                }

              });
          } else {
            this.showValidationDialog = true;
            this.error_Validation = "Can't Catch Facebook Account"
          }
        }, {
            scope: "public_profile,email"
          });
      },
      googleOnSignUp(googleUser) {
        let profile = googleUser.getBasicProfile();
      },

      onSignIn(user) {
        const profile = user.getBasicProfile();
        this.socialEmail = profile.getEmail();
        this.socialFirstName = profile.getGivenName();
        this.socialLastName = profile.getFamilyName();
        this.providerID = profile.getId();
        this.provider_name = "google";
        this.socialSubmit();
      },

      checkLinked() {
        if (IN.User.isAuthorized()) {
          IN.Event.on(IN, "auth", this.getProfileData());
        } else {
          IN.UI.Authorize()
            .place()
            .onWindowRemove.subscribe(() => {
              if (IN.User.isAuthorized()) {
                this.getProfileData();
              } else {
                this.showValidationDialog = true;
                this.error_Validation = "Can't Catch LinkedIn Account"
              }
            });
        }
      },
      // Use the API call wrapper to request the member's basic profile data
      getProfileData() {
        IN.API.Raw(
          "/people/~:(first-name,last-name,id,public-profile-url,email-address,siteStandardProfileRequest)"
        )
          .result(res => {
            this.socialEmail = res.emailAddress;
            this.socialFirstName = res.firstName;
            this.socialLastName = res.lastName;
            this.providerID = res.id;
            this.provider_name = "linkedin";
            this.socialSubmit();
          })
          .error(error => {
            console.log("error", error);
            this.showValidationDialog = true;
            this.error_Validation = "Can't Catch LinkedIn Account"
          });
      }
    },
 
  };

</script>
<style lang="scss">
  .LoginOption {
    display: flex;
    margin-bottom: 20px;
  }

  .LoginOption button:first-child {
    margin-right: 10px;
  }

  .LoginOption button:last-child {
    margin-left: 10px;
  }

  .HeadTitle {
    margin-bottom: 23px;
  }

  .socialContainer {
    display: flex;
    width: 100%;
    height: 50px;
    background-color: #fff;
    border-radius: 4px;
  }

  .sunHeadTitle {
    margin: auto 12px !important;
    font-size: 16px;
    flex: 5;
  }

  .socialBtn {
    margin-left: auto;
    width: 60%;
    flex: 3.5;
  }

  .socialBtn button {
    border-left: 1px solid #eee !important;
    border-right: 1px solid #eee !important;
    border-radius: 4px !important;
    height: 100% !important;
    margin: 0 !important;
    width: 33.3%;
    max-width: 100px;
    min-width: auto;
  }

  .socialBtn i {
    font-size: 18px !important;
    font-weight: 600;
  }

  .signUpCont {
    padding: 0 200px !important;
    margin-top: 50px !important;
  }

  .sliderCard {
    height: 570px;
  }

  .SliderImages {
    width: 320px;
    height: 320px;
    display: block;
    margin: auto;
  }

  .createAccountBtn {
    display: block;
    margin-left: 25%;
    top: -8px;
  }

  .privacyPolicyCheck {
    margin-top: 0 !important;
  }

  .privacyPolicyCheck .v-label {
    top: 3px !important;
    font-size: 16px !important;
    color: #053a6e;
  }

  @media only screen and (min-width: 401px) and (max-width: 767px) {
    .createAccountCont {
      margin-top: 20px !important;
    }

    .privacyPolicyCheck .v-label {
      font-size: 11px !important;
    }

    .socialBtn {
      flex: 8;
    }

    .sliderCard {
      height: 180px !important;
    }

    .SliderImages {
      width: 130px;
      height: 130px;
      margin: 0 15px;
    }
  }

  @media only screen and (min-width: 320px) and (max-width: 400px) {
    .privacyPolicyCheck .v-label {
      font-size: 10px !important;
    }

    .sliderCard {
      height: 180px !important;
    }

  }

  @media only screen and (min-width: 600px) and (max-width:600px) {
    .sliderCard {
      height: 230px !important;
    }
  }

  @media only screen and (min-width: 768px) and (max-width: 1023px) {
    .sliderCard {
      height: 280px !important;
    }
  }

  #googleIcon {
    font-size: 16px !important;
  }

  #facebookIcon::before {
    content: "\f39e" !important;
  }

  .forgetBtn {
    font-size: 16px !important;
    color: #053a6e !important;
    margin-right: 0 !important;
    position: relative;
    left: 30%;
  }

  @media only screen and (min-width: 300px) and (max-width: 700px) {
    .v-btn--round.v-btn--large .v-btn__content {
      font-size: 11px;
    }

    .forgetBtn {
      font-size: 11px !important;
      margin-right: 0 !important;
    }

    .createAccountBtn {
      font-size: 20px !important;
    }

    .socialBtn {
      flex: 8;
    }


  }

  @media only screen and (min-width: 321px) and (max-width: 420px) {
    #backBtn {
      top: -8px;
      left: -250% !important;
    }
  }

  @media only screen and (max-width: 320px) {
    #backBtn {
      top: -8px;
      left: -390% !important;
    }
  }

  @media only screen and (min-width: 421px) {
    #backBtn {
      background-color: #053a6e !important;
      position: relative !important;
      left: 45% !important;
      top: -8px;
    }

  }

  .errorStyle {
    color: #ff5252;
    font-family: 'Segoe UI Semilight';
    font-size: 12px;
    position: relative;
    left: 2%;
  }

  input:selected {
    background-color: #eee !important;
  }


  #google-signin-button {
    position: absolute;
    width: 180%;
    height: 310%;
    opacity: 0;
  }

  #google-signin-button .abcRioButtonLightBlue {
    position: absolute;
    width: 100% !important;
    height: 100% !important;
  }

  header {
    position: absolute;
    top: 0;
    right: 0;
    left: 0;
    padding-top: 15px;
    z-index: 10;
  }

  .register-btn {
    background-color: #fff;
    color: #053A6E;
    margin-left: 8%;
  }

  .register-btn:hover {
    background-color: #053A6E;
    color: #fff;
  }

  .ToolBarText {
    color: #053A6E;
  }

  // @media only screen and (min-width: 1200px) {
  //     .createAccountBtn {
  //       margin-left: 57% !important;
  //     }
  // }
  // @media only screen and (min-width: 959px) and () {
  //     .createAccountBtn {
  //       margin-left: 50% !important;
  //     }
  // }
</style>