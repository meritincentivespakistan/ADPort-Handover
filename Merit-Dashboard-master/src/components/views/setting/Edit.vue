<template>
  <div>
      <div class="custom-tabs">
        <ul class="nav nav-tabs">
          <li class="active"><a data-toggle="tab" href="#tab1">Edit Program</a></li>
          <li><a data-toggle="tab" href="#tab2">Admin Actions</a></li>
          <li><a data-toggle="tab" href="#tab3">API Keys</a></li>
          <li><a data-toggle="tab" href="#tab4">User Info HMAC</a></li>
        </ul>
      </div>

      <div class="content">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="tab-content">
                <div id="tab1" class="tab-pane fade in active">
                  <h3>Tab 1</h3>
                  <p>Content for tab 1.</p>
                </div>
                <div id="tab2" class="tab-pane fade">
                  <h3>Tab 2</h3>
                  <p>Content for tab 2.</p>
                </div>
                <div id="tab3" class="tab-pane fade">
                  <h3>Tab 3</h3>
                  <p>Content for tab 3.</p>
                </div>
                <div id="tab4" class="tab-pane fade">
                  <h3>Tab 4</h3>
                  <p>Content for tab 4.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

  </div>
</template>
<script>
require('moment')
import datepicker from 'vue-date-picker'

export default {
  name: 'Settings',
  components: { datepicker },
  computed: {
    datetime () {
      return new Date()
    }
  },
  methods: {
    clearInput (vueModel) {
      vueModel = ''
    }
  }
}
</script>

<style>
.datetime-picker input {
  height: 4em !important;
}
.custom-tabs{
  background-color: #fff;
  border-top: 2px solid #f8f8f8;
}
.nav-tabs{
  width: 40%;
  margin: 0 auto;
  background-color: #fff;
  border-bottom: 0;
}
.nav-tabs>li{
  width: 25%;
  text-align: center;
  font-size: 17px;
}
.nav-tabs>li>a{
  border: 0;
  color: #444;
}
.nav-tabs>li>a{
  border: 0;
  color: #b2b2b2;
}
.nav-tabs>li>a:hover{
  background: transparent
}
.nav-tabs>li>a:hover,.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover{
  border: 0;
  border-bottom: 2px solid #002A3A;
  color: #002A3A;
}
.tab-content{
  background-color: #fff;
  padding: 5px 20px;
  border-radius: 5px;
}
</style>
