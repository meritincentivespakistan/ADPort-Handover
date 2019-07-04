<template>
  <div class="container-fluid p-0 bg-white">
    <nav class="navbar navbar-default text-center no-border border-raduis-none m-0  navbar-fixed-top">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
            aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">
            <div class="navbar-logo">
              <img alt="Brand" src="https://dsn08qfebpsta.cloudfront.net/themes/cr-9a24262e4b8e56fd7144d18f83ba1eac.svg">
            </div>
          </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse text-center" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a  class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                aria-expanded="false">Programmes <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="/">Programmes</a></li>
                <li><a href="/reports">Reports</a></li>
              </ul>
            </li>
            <li><a href="/clients">Clients</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                aria-expanded="false">Users <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="/userSearch">Search</a></li>
                <li><a href="/userApproved">Approve (1)</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li>
              <button  type="button" class="btn nav-btn-default mt-3">+ Add Programme</button>
            </li>
            <li>
              <a href="#">
                <i class="fa fa-info-circle"></i>
              </a>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                aria-expanded="false"><i class="fa fa-bell"></i> <span class="badge pull-right">5</span></a>
              <ul class="dropdown-menu">
                <li>
                  <a href="#">
                    <p class="title">Emerson Rewards - points have been added to user acc...</p>
                    <p class="message-body">
                      Amit Kaldhone had points added by Eula Mario. Programme name: Emerson Rewards
                    </p>
                  </a>
                </li>
                <li role="separator" class="divider"></li>
                <li>
                  <a href="#">
                    <p class="title"> been added to user acc...</p>
                    <p class="message-body">
                      had points added by Eula Mario. Programme name: Emerson Rewards
                    </p>
                  </a>
                  </li>
                <li role="separator" class="divider"></li>
                <li>
                  <a href="#">
                    <p class="title"> basss user acc...</p>
                    <p class="message-body">
                      no one had points added by Eula Mario. Programme name: Emerson Rewards
                    </p>
                  </a>
                </li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                aria-expanded="false"> hello user name <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Edit Profile</a></li>
                <li><a href="#">Change Password</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Logout</a></li>
              </ul>
            </li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>
    <section class="content container bg-color mt-5">

      <div class="row center-block">
        <h2>Programmes(17)</h2>
        <div class="col-md-12">
          <div class="box">

            <!-- /.box-header -->
            <div class="box-body">
              <div class="dataTables_wrapper form-inline dt-bootstrap" id="example1_wrapper">
                <div class="row">
                  <div class="col-sm-6">
                    <div id="example1_length" class="dataTables_length">

                    </div>
                  </div>
                </div>

                <div class="row">
                  <div class="col-sm-12 table-responsive">
                    <table aria-describedby="example1_info" role="grid" id="example1" class="table table-bordered table-striped dataTable">
                      <thead>
                        <tr role="row">
                          <th aria-label="Rendering engine: activate to sort column descending" aria-sort="ascending"
                            style="width: 167px;" colspan="1" rowspan="1" aria-controls="example1" tabindex="0" class="sorting_asc">Name</th>
                          <th aria-label="Browser: activate to sort column ascending" style="width: 207px;" colspan="1"
                            rowspan="1" aria-controls="example1" tabindex="0" class="sorting">Internal ID</th>
                          <th aria-label="Platform(s): activate to sort column ascending" style="width: 182px;" colspan="1"
                            rowspan="1" aria-controls="example1" tabindex="0" class="sorting">Client</th>
                          <th aria-label="Engine version: activate to sort column ascending" style="width: 142px;"
                            colspan="1" rowspan="1" aria-controls="example1" tabindex="0" class="sorting">Status</th>
                          <th aria-label="CSS grade: activate to sort column ascending" style="width: 101px;" colspan="1"
                            rowspan="1" aria-controls="example1" tabindex="0" class="sorting">User start</th>
                          <th aria-label="CSS grade: activate to sort column ascending" style="width: 101px;" colspan="1"
                            rowspan="1" aria-controls="example1" tabindex="0" class="sorting">User end</th>

                        </tr>
                      </thead>
                      <tbody>
                        <tr class="even table-font" role="row">
                          <td class="sorting_1">Blink</td>
                          <td>Iridium 54.0</td>
                          <td>GNU/Linux</td>
                          <td>54</td>
                          <td>A</td>
                          <td>c</td>

                        </tr>
                        <tr class="odd table-font" role="row">
                          <td class="sorting_1">Gecko</td>
                          <td>Firefox 1.0</td>
                          <td>Win 98+ / OSX.2+</td>
                          <td>1.7</td>
                          <td>A</td>
                          <td>B</td>

                        </tr>
                        <tr class="even table-font" role="row">
                          <td class="sorting_1">Gecko</td>
                          <td>Firefox 1.5</td>
                          <td>Win 98+ / OSX.2+</td>
                          <td>1.8</td>
                          <td>A</td>
                          <td>B</td>

                        </tr>
                        <tr class="odd table-font" role="row">
                          <td class="sorting_1">Gecko</td>
                          <td>Firefox 2.0</td>
                          <td>Win 98+ / OSX.2+</td>
                          <td>1.8</td>
                          <td>A</td>
                          <td>B</td>

                        </tr>
                        <tr class="even table-font" role="row">
                          <td class="sorting_1">Gecko</td>
                          <td>Firefox 3.0</td>
                          <td>Win 2k+ / OSX.3+</td>
                          <td>1.9</td>
                          <td>A</td>
                          <td>B</td>

                        </tr>
                        <tr class="odd table-font" role="row">
                          <td class="sorting_1">Gecko</td>
                          <td>Camino 1.0</td>
                          <td>OSX.2+</td>
                          <td>1.8</td>
                          <td>A</td>
                          <td>B</td>

                        </tr>
                        <tr class="even table-font" role="row">
                          <td class="sorting_1">Gecko</td>
                          <td>Camino 1.5</td>
                          <td>OSX.3+</td>
                          <td>1.8</td>
                          <td>A</td>
                          <td>B</td>

                        </tr>
                        <tr class="odd table-font" role="row">
                          <td class="sorting_1">Gecko</td>
                          <td>Netscape 7.2</td>
                          <td>Win 95+ / Mac OS 8.6-9.2</td>
                          <td>1.7</td>
                          <td>A</td>
                          <td>B</td>

                        </tr>
                        <tr class="even table-font" role="row">
                          <td class="sorting_1">Gecko</td>
                          <td>Netscape Browser 8</td>
                          <td>Win 98SE+</td>
                          <td>1.7</td>
                          <td>A</td>
                          <td>B</td>

                        </tr>
                        <tr class="odd table-font" role="row">
                          <td class="sorting_1">Gecko</td>
                          <td>Netscape Navigator 9</td>
                          <td>Win 98+ / OSX.2+</td>
                          <td>1.8</td>
                          <td>A</td>
                          <td>B</td>

                        </tr>
                        <tr class="even table-font" role="row">
                          <td class="sorting_1">Gecko</td>
                          <td>Mozilla 1.0</td>
                          <td>Win 95+ / OSX.1+</td>
                          <td>1</td>
                          <td>A</td>
                          <td>B</td>

                        </tr>
                      </tbody>
                      <!-- <tfoot>
                      <tr>
                        <th colspan="1" rowspan="1">Rendering engine</th>
                        <th colspan="1" rowspan="1">Browser</th>
                        <th colspan="1" rowspan="1">Platform(s)</th>
                        <th colspan="1" rowspan="1">Engine version</th>
                        <th colspan="1" rowspan="1">CSS grade</th>
                      </tr>
                    </tfoot> -->
                    </table>
                  </div>
                </div>
              </div>
              <!-- /.box-body -->
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
  import $ from 'jquery'
  // Require needed datatables modules
  require('datatables.net')
  require('datatables.net-bs')

  export default {
    name: 'Home',
    mounted() {
      this.$nextTick(() => {
        $('#example1').DataTable()
      })
    },
  }

</script>

<style>
  .bg-color {
    background-color: #fff;
  }

  /* Using the bootstrap style, but overriding the font to not draw in
   the Glyphicons Halflings font as an additional requirement for sorting icons.

   An alternative to the solution active below is to use the jquery style
   which uses images, but the color on the images does not match adminlte.

@import url('/static/js/plugins/datatables/jquery.dataTables.min.css');
*/

  @import url('/static/js/plugins/datatables/dataTables.bootstrap.css');

  table.dataTable thead .sorting:after,
  table.dataTable thead .sorting_asc:after,
  table.dataTable thead .sorting_desc:after {
    font-family: 'FontAwesome';
  }

  table.dataTable thead .sorting:after {
    content: '\f0dc';
  }

  table.dataTable thead .sorting_asc:after {
    content: '\f0dd';
  }

  table.dataTable thead .sorting_desc:after {
    content: '\f0de';
  }

  .table-font {
    font-size: 20px;
  }

  .navbar-logo img {
    height: 30px;
  }

  .navbar-logo {
    position: relative;
    top: -4px;
    margin-right: 10px;
  }

  .border-raduis-none {
    border-radius: 0;
  }

  .navbar {
    height: 40px;
    z-index: 99900;
  }

  .navbar-default {
    background-color: #fff;
    -webkit-box-shadow: 1px 1px 2px 2px #ddd;
    -moz-box-shadow: 1px 1px 2px 2px #ddd;
    box-shadow: 1px 1px 2px 2px #ddd;
  }

  .container {
    width: 970px;
    max-width: none !important;
  }

  .nav-btn-default {
    color: #fff;
    background-color: #B4D333;
    border-color: #8cab0b;
    -webkit-box-shadow: 0 2px 2px rgba(0, 0, 0, 0.15);
    -moz-box-shadow: 0 2px 2px rgba(0, 0, 0, 0.15);
    box-shadow: 0 2px 2px rgba(0, 0, 0, 0.15);
  }

  .nav-btn-default:hover,
  .nav-btn-default:focus {
    color: #fff;
  }
  .navbar .badge {
    background: red;
  }
  .title {
    font-size: 14px;
    line-height: 17px;
    font-weight: bold;
    margin: 5px 0;
    padding: 0;
  }
@media only screen and (max-width: 768px) {
  .pull-right {
    float: none !important;
  }
  .navbar-collapse {
    background-color: white;
    text-align: left;
  }
  .navbar-default {
    max-width: 95%;
  }
}  
</style>
