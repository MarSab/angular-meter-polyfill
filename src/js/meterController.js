(function(angular){
  'use strict';

  var isMeterSupported = "value" in document.createElement('meter');
  if(!isMeterSupported){
    angular.module('angular-meter-polyfill').controller('meterController', ['$scope', function($scope){
      $scope.barStyle = {width: 0};
      $scope.$watch(['min', 'max', 'low', 'high', 'value'], function(){
        $scope.status = "optimum";
        if($scope.max === undefined){
          $scope.max = 1;
        }
        $scope.min = $scope.min || 0;
        if($scope.high !== undefined && $scope.value > $scope.high){
          $scope.status = "suboptimum";
        }
        if($scope.low !== undefined && $scope.value < $scope.low){
          $scope.status = "suboptimum";
        }
        if($scope.low > $scope.max/2 && $scope.low !== undefined && $scope.value > $scope.low && $scope.value > $scope.high){
          $scope.status = "even-less-good";
        }
        var barWidth = 100*($scope.value-$scope.min)/($scope.max-$scope.min);
        $scope.barStyle.width = barWidth + '%';
      });
    }
  ]);
}
})(angular);
