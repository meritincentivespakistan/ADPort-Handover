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

<script>
export default {
  
}
</script>
<style>
.sub-links-container {
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: #fff;
  padding: 15px;
}
</style>
