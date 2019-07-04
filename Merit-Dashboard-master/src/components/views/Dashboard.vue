<template>
  <!-- Main content -->
  <section class="content">
    
    <div class="circle-chart">
      <div class="row">
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class='info-box'>
            <span>
              <div class='c100 p30'>
                <span>30%</span>
                <div class='slice'>
                  <div class='bar'></div>
                  <div class='fill'></div>
                </div>
              </div>
            </span>
            <div class="info-box-content"><span class="info-box-text">Registrations</span> <span class="info-box-number">1000</span></div>
          </div>
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class='info-box'>
            <span>
              <div class='c100 p30 second-circle'>
                <span>30%</span>
                <div class='slice'>
                  <div class='bar'></div>
                  <div class='fill'></div>
                </div>
              </div>
            </span>
            <div class="info-box-content"><span class="info-box-text">Active users</span> <span class="info-box-number">300</span></div>
          </div>
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class='info-box'>
            <span>
              <div class='c100 p30 third-circle'>
                <span>30%</span>
                <div class='slice'>
                  <div class='bar'></div>
                  <div class='fill'></div>
                </div>
              </div>
            </span>
            <div class="info-box-content"><span class="info-box-text">Total webstie visits</span> <span class="info-box-number">196</span></div>
          </div>
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class='info-box last'>
            <span>
              <div class='c100 p45 orange'>
                <span>45%</span>
                <div class='slice'>
                  <div class='bar'></div>
                  <div class='fill'></div>
                </div>
              </div>
            </span>
            <div class="info-box-content"><span class="info-box-text">Visits per active users</span> <span class="info-box-number">163</span></div>
          </div>
        </div>

      </div>
    </div>

    <div class="row">
      <div class="col-xs-7">
        <div class="box">
          <div class="box-header with-border">
            <h3 class="box-title">Registrations</h3>
            <div class="box-body">
              <canvas id="trafficBar1" ></canvas>
            </div>
          </div>
        </div>
      </div>
      <div class="col-xs-5">
        <div class="box">
          <div class="box-header with-border">
            <h3 class="box-title">Website Visits</h3>
            <div class="box-body">
                <canvas id="trafficBar2"></canvas>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- /.row -->

  </section>
  <!-- /.content -->
</template>

<script>
import Chart from 'chart.js'
import Alert from '../widgets/Alert'
import InfoBox from '../widgets/InfoBox'
import ProcessInfoBox from '../widgets/ProcessInfoBox'

export default {
  name: 'Dashboard',
  components: {
    Alert,
    InfoBox,
    ProcessInfoBox
  },
  data () {
    return {
      generateRandomNumbers (numbers, max, min) {
        var a = []
        for (var i = 0; i < numbers; i++) {
          a.push(Math.floor(Math.random() * (max - min + 1)) + max)
        }
        return a
      }
    }
  },
  computed: {
    coPilotNumbers () {
      return this.generateRandomNumbers(12, 1000000, 10000)
    },
    personalNumbers () {
      return this.generateRandomNumbers(12, 1000000, 10000)
    },
    isMobile () {
      return (window.innerWidth <= 800 && window.innerHeight <= 600)
    }
  },
  mounted () {
    this.$nextTick(() => {
      var ctx1 = document.getElementById('trafficBar1').getContext('2d')
      var config1 = {
        type: 'line',
        data: {
          labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
          datasets: [{
            label: 'Admin Panel',
            fill: false,
            borderColor: '#284184',
            pointBackgroundColor: '#284184',
            backgroundColor: 'rgba(0, 0, 0, 0)',
            data: this.coPilotNumbers
          }, {
            label: 'Personal Site',
            borderColor: '#4BC0C0',
            pointBackgroundColor: '#4BC0C0',
            backgroundColor: 'rgba(0, 0, 0, 0)',
            data: this.personalNumbers
          }]
        },
        options: {
          responsive: true,
          maintainAspectRatio: !this.isMobile,
          legend: {
            position: 'bottom',
            display: true
          },
          tooltips: {
            mode: 'label',
            xPadding: 10,
            yPadding: 10,
            bodySpacing: 10
          }
        }
      }

      new Chart(ctx1, config1) // eslint-disable-line no-new

      var ctx2 = document.getElementById('trafficBar2').getContext('2d')
      var config2 = {
        type: 'line',
        data: {
          labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
          datasets: [{
            label: 'Admin Panel',
            fill: false,
            borderColor: '#284184',
            pointBackgroundColor: '#284184',
            backgroundColor: 'rgba(0, 0, 0, 0)',
            data: this.coPilotNumbers
          }, {
            label: 'Personal Site',
            borderColor: '#4BC0C0',
            pointBackgroundColor: '#4BC0C0',
            backgroundColor: 'rgba(0, 0, 0, 0)',
            data: this.personalNumbers
          }]
        },
        options: {
          responsive: true,
          maintainAspectRatio: !this.isMobile,
          legend: {
            position: 'bottom',
            display: true
          },
          tooltips: {
            mode: 'label',
            xPadding: 10,
            yPadding: 10,
            bodySpacing: 10
          }
        }
      }

      new Chart(ctx2, config2) // eslint-disable-line no-new
    })
  }
}
</script>
<style>
.circle-chart{
  min-height: 160px;
  background-color: #fff;
  padding: 20px;
  margin-bottom: 20px;
}
.circle-chart .info-box {
  cursor: pointer;
  min-height: 160px;
  padding: 20px;
  margin-bottom: 0;
  background-color: transparent;
  box-shadow: none;
  border-right: 2px solid #f8f8f8;
}
.circle-chart .info-box.last{
  border-right: 0;  
}

.info-box-content {
  text-align: center;
  vertical-align: middle;
  display: inherit;
}
.fullCanvas {
  width: 100%;
}

.circle-chart .info-box-content{
  margin-top: 12px;
}
.circle-chart .info-box-text{
  font-size: 14px;
  text-transform: capitalize;
}
.circle-chart .info-box-number{
  font-size: 32px;
  font-weight: 400;
}
.second-circle:hover > span, .second-circle > span{
  color: #4c84ff;
}
.c100.second-circle .bar{
  border-color: #4c84ff !important;
}
.third-circle:hover > span, .third-circle > span{
  color: #29cc97;
}
.c100.third-circle .bar{
  border-color: #29cc97 !important;
}
/* h3{
  font-weight: 400;
  margin-bottom: 20px;
  margin-top: 0;
  color: #b2b2b2;
} */
.box-header .box-title {
  color: #b2b2b2;
  font-size: 24px;
  margin: 10px 0 20px 20px;
}
</style>
