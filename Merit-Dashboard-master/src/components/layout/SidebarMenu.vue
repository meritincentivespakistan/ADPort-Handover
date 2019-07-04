<template>
  <ul class="sidebar-menu">
    <!-- <li class="header">TOOLS</li> -->
    <router-link tag="li" class="pageLink" to="/">
      <a> 
        <!-- <i class="fa fa-desktop"></i> -->
        <img src="/static/svg-icons/Dashboard-S.svg" class="svg-icon" alt="">
        <span class="page">Dashboard</span>
      </a>
    </router-link>

    <li class="treeview">
      <a href="#">
        <img src="/static/svg-icons/Settings.svg" class="svg-icon" alt="">
        <span class="treeview-title">Settings</span>
        <span class="pull-right-container pull-right">
          <i class="fa fa-angle-left fa-fw"></i>
        </span>
      </a>
      <ul class="treeview-menu">
        <li>
          <a href="#">Programme Settings</a>
        </li>
        <li>
          <a href="#">Domains</a>
        </li>
        <li>
          <a href="#">Points</a>
        </li> 
      </ul>
    </li>

    <li class="treeview">
      <a href="#">
        <img src="/static/svg-icons/Design.svg" class="svg-icon" alt="">
        <span class="treeview-title">Design</span>
        <span class="pull-right-container pull-right">
          <i class="fa fa-angle-left fa-fw"></i>
        </span>
      </a>
      <ul class="treeview-menu">
        <li>
          <a href="#">Site Design</a>
        </li>
        <li>
          <a href="#">Email Template</a>
        </li>
        <li>
          <a href="#">Tag Manager</a>
        </li> 
      </ul>
    </li>

    <li class="treeview">
      <a href="#">
        <img src="/static/svg-icons/Users.svg" class="svg-icon" alt="">
        <span class="treeview-title">Users</span>
        <span class="pull-right-container pull-right">
          <i class="fa fa-angle-left fa-fw"></i>
        </span>
      </a>
      <ul class="treeview-menu">
        <li>
          <a href="#">User Groups</a>
        </li>
        <li>
          <a href="#">Manage Users</a>
        </li>
      </ul>
    </li>

    <li class="treeview">
      <a href="#">
        <img src="/static/svg-icons/Access and Messages.svg" class="svg-icon" alt="">
        <span class="treeview-title">Access and Messages</span>
        <span class="pull-right-container pull-right">
          <i class="fa fa-angle-left fa-fw"></i>
        </span>
      </a>
      <ul class="treeview-menu">
        <li>
          <a href="#">Access Type</a>
        </li>
        <li>
          <a href="#">Data & Registration</a>
        </li>
        <li>
          <a href="#">Manages</a>
        </li>
      </ul>
    </li>

    <li class="treeview">
      <a href="#">
        <img src="/static/svg-icons/Content Manager.svg" class="svg-icon" alt="">
        <span class="treeview-title">Content Manager</span>
        <span class="pull-right-container pull-right">
          <i class="fa fa-angle-left fa-fw"></i>
        </span>
      </a>
      <ul class="treeview-menu">
        <li>
          <a href="#">Pages</a>
        </li>
        <li>
          <a href="#">Navigation</a>
        </li>
        <li>
          <a href="#">File Manager</a>
        </li>
        <li>
          <a href="#">Image Library</a>
        </li>
      </ul>
    </li>

    <li class="treeview">
      <a href="#">
        <img src="/static/svg-icons/Recognition Module.svg" class="svg-icon" alt="">
        <span class="treeview-title">Recognition Module</span>
        <span class="pull-right-container pull-right">
          <i class="fa fa-angle-left fa-fw"></i>
        </span>
      </a>
      <ul class="treeview-menu">
        <li>
          <a href="#">Company Values</a>
        </li>
        <li>
          <a href="#">RecognitionWall</a>
        </li>
        <li>
          <a href="#">Recognition Compaigns</a>
        </li>
      </ul>
    </li>

    <li class="treeview">
      <a href="#">
        <img src="/static/svg-icons/Comms Module.svg" class="svg-icon" alt="">
        <span class="treeview-title">Comms Module</span>
        <span class="pull-right-container pull-right">
          <i class="fa fa-angle-left fa-fw"></i>
        </span>
      </a>
      <ul class="treeview-menu">
        <li>
          <a href="#">Site Messages</a>
        </li>
      </ul>
    </li>

    <li class="treeview">
      <a href="#">
        <img src="/static/svg-icons/Rewards Module.svg" class="svg-icon" alt="">
        <span class="treeview-title">Rewards Module</span>
        <span class="pull-right-container pull-right">
          <i class="fa fa-angle-left fa-fw"></i>
        </span>
      </a>
      <ul class="treeview-menu">
        <li><a href="#">User Settings</a></li>
        <li><a href="#">Catalogue settings</a></li>
        <li><a href="#">Category mapping</a></li>
        <li><a href="#">Active rewards</a></li>
        <li><a href="#">Bulk import points</a></li>
        <li><a href="#">Points voucher</a></li>
      </ul>
    </li>

     <li class="treeview">
      <a href="#">
        <img src="/static/svg-icons/Performance Module.svg" class="svg-icon" alt="">
        <span class="treeview-title">Performance Module</span>
        <span class="pull-right-container pull-right">
          <i class="fa fa-angle-left fa-fw"></i>
        </span>
      </a>
      <ul class="treeview-menu">
        <li><a href="#">Products & Activity</a></li>
        <li><a href="#">Promotions</a></li>
      </ul>
    </li>

    <li class="treeview">
      <a href="#">
        <img src="/static/svg-icons/E-Learning Module.svg" class="svg-icon" alt="">
        <span class="treeview-title">E-Learning Module</span>
        <span class="pull-right-container pull-right">
          <i class="fa fa-angle-left fa-fw"></i>
        </span>
      </a>
      <ul class="treeview-menu">
        <li><a href="#">Courses</a></li>
        <li><a href="#">Tests</a></li>
      </ul>
    </li>

    <li class="treeview">
      <a href="#">
        <img src="/static/svg-icons/Languages Module.svg" class="svg-icon" alt="">
        <span class="treeview-title">Languages Module</span>
        <span class="pull-right-container pull-right">
          <i class="fa fa-angle-left fa-fw"></i>
        </span>
      </a>
      <ul class="treeview-menu">
        <li><a href="#">Language Settings</a></li>
      </ul>
    </li>

    <li class="treeview">
      <a href="#">
        <img src="/static/svg-icons/Extra Features.svg" class="svg-icon" alt="">
        <span class="treeview-title">Extra Features</span>
        <span class="pull-right-container pull-right">
          <i class="fa fa-angle-left fa-fw"></i>
        </span>
      </a>
      <ul class="treeview-menu">
        <li><a href="#">Target trackers</a></li>
        <li><a href="#">Data Widgets</a></li>
        <li><a href="#">Badges</a></li>
      </ul>
    </li>   

  </ul>
</template>
<script>
import * as $ from 'jquery'
export default {
  name: 'SidebarMenu'
}
$(document).ready(function() { $('.pageLink').click(function() { console.log('LVKvvk') }) })
</script>
<style>
/* override default */
.svg-icon{
  width: 16px !important;
  margin-right: 15px;
}
.page{
  vertical-align: middle
}
.sidebar-menu > li > a {
  padding: 12px 15px 12px 15px;
}

.sidebar-menu li.active > a > .fa-angle-left,
.sidebar-menu li.active > a > .pull-right-container > .fa-angle-left {
  animation-name: rotate;
  animation-duration: 0.2s;
  animation-fill-mode: forwards;
}

.treeview-title {
  z-index: 1;
  vertical-align: middle; 
}

@keyframes rotate {
  0% {
    transform: rotate(0deg);
  }

  100% {
    transform: rotate(-90deg);
  }
}
</style>
