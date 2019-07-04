<template>
  <div class="container-fluid bg-white">  
    <div class="container p-0 mb-5">
      <div class="row m-0 p-0">
        <div class="col-xs-12 mb-5">
          <h2>New Programme</h2>
        </div>
        <form class="col-xs-12">
          <div class="col-xs-6 mb-4">
            <label>Name <span>*</span>
              <div class="fa fa-info-circle tip" title="" data-toggle="tooltip" data-placement="right"
                data-original-title="Programme name must be unique and will be used in user communications"></div>
            </label>
            <input type="text" class="form-control" placeholder="Enter Name">
          </div>
          <div class="col-xs-6 mb-4">
            <label>Reference <span>*</span>
              <div class="fa fa-info-circle tip" title="" data-toggle="tooltip" data-placement="right"
                data-original-title="Programme reference is your internal reference code for this programme"></div>
            </label>
            <input type="text" class="form-control" placeholder="Reference">
          </div>
          <div class="col-xs-6 mb-4">
            <label>Agency <span>*</span></label>
            <select class="form-control">
              <option>MyList</option>
            </select>
          </div>
          <div class="col-xs-6 mb-4">
            <label>Client <span>*</span></label>
            <select class="form-control">
              <option>MyClient</option>
              <option>My Other Client</option>
              <option>Someone</option>
            </select>
          </div>
          <div class="col-xs-6 mb-4">
            <label>Currency <span>*</span></label>
            <select class="form-control">
              <option>EGP</option>
              <option>USD</option>
              <option>EUR</option>
            </select>
          </div>
          <div class="col-xs-6 mb-4">
            <label>Theme <span>*</span>
              <div class="fa fa-info-circle tip" title="" data-toggle="tooltip" data-placement="right"
                data-original-title="Add description about each theme"></div>
            </label>
            <select class="form-control">
              <option>My Rewards account</option>
              <option>My Rewards banner</option>
            </select>
          </div>
          <div class="col-xs-6 mb-4">
            <label>Sent From Email <div class="fa fa-info-circle tip" title="" data-toggle="tooltip" data-placement="right"
                data-original-title="Please ensure that you set up your email account. If no address is entered all emails will be sent from messages@my-rewards.co.uk"></div></label>
            <input type="text" class="form-control" placeholder="Sent From Email">
          </div>
          <div class="col-xs-6 mb-4">
            <label>Contact form email <span>*</span></label>
            <input type="text" class="form-control" placeholder="Contact form email">
          </div>
          <div class="col-xs-6 mb-4">
            <label> Google Analytics ID </label>
            <input type="text" class="form-control" placeholder="Google Analytics ID">
          </div>
          <div class="col-xs-6 mb-4">
            <label> Google Tag Manager</label>
            <input type="text" class="form-control" placeholder="Google Tag Manager">
          </div>
          <div class="col-xs-12 my-4">
            <h2>Modules</h2>
          </div>
          <div class="row p-0 m-0">
            <div class="col-xs-4">
              <label class="checkbox-inline">
                <input type="checkbox" id="rewardModuleCheckbox"> <span>Reward module</span>
                <span class="checkmark"></span>
              </label>
            </div>
            <div class="col-xs-4">
              <label class="checkbox-inline">
                <input type="checkbox" id="languagesModuleCheckbox"> Languages module
                <span class="checkmark"></span>
              </label>
            </div>
            <div class="col-xs-4">
              <label class="checkbox-inline">
                <input type="checkbox" id="eLearningModuleCheckbox"> E-Learning module
                <span class="checkmark"></span>
              </label>
            </div>
          </div>
          <div class="row p-0 m-0">
            <div class="col-xs-4">
              <label class="checkbox-inline">
                <input type="checkbox" id="recognitionModuleCheckbox"> Recognition module
                <span class="checkmark"></span>
              </label>
            </div>
            <div class="col-xs-4">
              <label class="checkbox-inline">
                <input type="checkbox" id="extraFeaturesCheckbox"> Extra features
                <span class="checkmark"></span>
              </label>
            </div>
          </div>
          <div class="row p-0 m-0">
            <div class="col-xs-4">
              <label class="checkbox-inline">
                <input type="checkbox" id="commsModuleCheckbox"> Comms module
                <span class="checkmark"></span>
              </label>
            </div>
            <div class="col-xs-4">
              <label class="checkbox-inline">
                <input type="checkbox" id="performanceModuleCheckbox"> Performance module
                <span class="checkmark"></span>
              </label>
            </div>
          </div>
          <div class="row m-0 p-0">
            <div class="col-xs-6 mb-4">
            <label>Default Local </label>
            <select class="form-control">
              <option>EN</option>
              <option>AR</option>
            </select>
          </div>
          <div class="col-xs-6 mb-4">
            <label>Status</label>
            <select class="form-control">
              <option>Status</option>
              <option>status for</option>
            </select>
          </div>
          </div>

        </form>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'add-programm'
  }

</script>

<style scoped>
  body {
    background-color: #fff !important;
  }

  .form-control {
    border-radius: 0.25rem;
  }

  .checkbox-inline {
    display: inline-block;
    position: relative;
    padding-left: 35px;
    margin-bottom: 12px;
    cursor: pointer;
    font-size: 22px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
  }

  .checkmark {
    position: absolute;
    top: 0;
    left: 0;
    height: 25px;
    width: 25px;
    background-color: #eee;
    border-radius: 0.25rem;
  }

  .checkbox-inline input {
    display: none;
  }

  .checkbox-inline:hover input~.checkmark {
    background-color: #ccc;
  }

  .checkbox-inline input:checked~.checkmark {
    background-color: #2196F3;
  }

  .checkmark:after {
    content: "";
    position: absolute;
    display: none;
  }

  .checkbox-inline input:checked~.checkmark:after {
    display: inline-block;
  }

  .checkbox-inline .checkmark:after {
    left: 9px;
    top: 3px;
    width: 7px;
    height: 15px;
    border: solid white;
    border-width: 0 3px 3px 0;
    -webkit-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    transform: rotate(45deg);
  }

</style>
