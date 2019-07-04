<template>
  <header class="main-header">
    <span class="logo-mini">
      <a href="/"><img src="/static/img/copilot-logo-white.svg" alt="Logo" class="img-responsive center-block logo"></a>
    </span>
    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="javascript:;" class="toggle-menu" data-toggle="offcanvas" role="button">
        <!-- <span class="sr-only">Toggle navigation</span> -->
        <img src="/static/svg-icons/Menu.svg" class="toggle-icon" alt="">
      </a>

      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- <messages-menu></messages-menu> -->
          <notifications-menu></notifications-menu>
          <!-- <tasks-menu></tasks-menu> -->
          <user-menu :user="user"></user-menu>
        </ul>
      </div>
    </nav>
  </header>
</template>

<script>
import { mapState } from 'vuex'
import NotificationsMenu from './NotificationsMenu'
import UserMenu from './UserMenu'

export default {
  name: 'DashHeader',
  components: {
    NotificationsMenu,
    UserMenu
  },
  props: ['user'],
  computed: {
    ...mapState(['userInfo'])
  }
}
</script>
<style>

.toggle-icon {
  width: 25px;
  margin-top: 17px;
}
.navbar a.toggle-menu {
  margin-left: -5px;
}

</style>

