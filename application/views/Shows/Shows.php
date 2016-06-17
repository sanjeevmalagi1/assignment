	<div ng-app="mainApp" ng-controller="tweetsController" class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">

		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Tweets of KRK </h1>

			</div>
		</div><!--/.row-->
		<button ng-click="loadData()" class="btn btn-warning col-sm-4 col-sm-offset-4"><i class="fa fa-refresh" aria-hidden="true"></i> Ajax Relaod </button>
		<div class="clearfix"></div>
		<div class="row">

		<div ng-repeat="tweet in tweets">
		<?php
		$this->load->view('Templates/ShowCard');
		?>
	 </div>




		</div><!--/.row-->

	</div>	<!--/.main-->

	<script>
  var mainApp = angular.module("mainApp", []);
  mainApp.controller('tweetsController', function($scope,$http) {

		var url="<?php echo base_url(); ?>index.php/Tweets/TweetsJson";//url of the dynamic json data from database

	  $scope.loadData = function () {
      $http.get(url).success(function(data) {
        $scope.tweets = data;
      });
   };

	 $scope.loadData();//load tweets for 1st time

  });
</script>
