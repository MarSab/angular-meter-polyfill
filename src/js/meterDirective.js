(function(angular){
  'use strict';

  var isMeterSupported = "value" in document.createElement('meter');
  if(!isMeterSupported){
    angular.module('angular-meter-polyfill').directive('meter', function(){
      return {
        restrict: 'E',
        replace: false,
        template: '<div class="meter-inner-element"><div class="meter-bar">'+
        '<div ng-class="\'meter-\'+status+\'-value\'" ng-style="barStyle">'+
        '</div></div></div>',
        scope: {
          min:"@",
          max:"@",
          low:"@",
          high:"@",
          value:"@"
        },
        controller: 'meterController'
      };
    });
  }
})(angular);
