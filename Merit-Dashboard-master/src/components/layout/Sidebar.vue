<template>
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <h4>Points</h4>
        <div class="c100 p30 mid pie-chart">
          <span>30%</span>
          <div class="slice">
            <div class="bar"></div>
            <div class="fill"></div>
          </div>
        </div>
        <div class="chart-desc">
          <p class="first-color"><i class="fa fa-square" aria-hidden="true"></i> 3.000 Point</p>
          <p class="second-color"><i class="fa fa-square" aria-hidden="true"></i> 10.000 Point</p>
        </div>
      </div>

      <div class="status">
        <h5>Status</h5>
        <p>Staging <i class="fa fa-circle text-yellow"></i></p>
        <h5 class="domain-link">
          Primary Domain
          <p>http://www.google.com</p>
        </h5>
        
        <a class="domain-icon-link" href="http://www.google.com"><i class="fa fa-globe fa-2x" aria-hidden="true"></i></a>
      </div>

      <!-- Sidebar Menu -->
      <sidebar-menu />
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>
</template>
<script>
import SidebarMenu from './SidebarMenu'

export default {
  name: 'Sidebar',
  props: ['user'],
  components: { SidebarMenu },
  mounted() {
    window
      .jQuery('[data-toggle="hideseek"]')
      .off()
      .hideseek()
  }
}
</script>
<style scope="local">

.user-panel {
  height: 10em;
  border-bottom:2px solid #f8f8f8;
  border-top:2px solid #f8f8f8;
}
.user-panel h4 {
  color: #b2b2b2;
  margin-top: 0;
  margin-bottom: 0;
}
.status {
  min-height: 7em;
  border-bottom: 2px solid #f8f8f8;
  margin-bottom: 10px;
  padding: 5px 10px 10px;
}
.status h5 {
  color: #b2b2b2;
  margin-bottom: 0;
}
.status h5 p{
  color: #333;
}

.status p {
  margin-bottom: 0;
  font-size: 16px;
}
.status .fa.text-yellow {
  font-size: 10px;
  vertical-align: middle;
  margin-left: 5px;
}
.status .domain-icon-link{
  display: none;
}
p.first-color{
 color: #002A3A;
 margin-bottom: 0;
}
p.second-color{
  color: #b2b2b2;
 margin-bottom: 0;
}
.pie-chart{
  float: right;
}
.chart-desc{
  margin-top: 50px;
}
</style>
