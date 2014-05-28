(function() {
  var NavigationController;

  angular.module('application').controller('NavigationController', [
    '$scope', NavigationController = (function() {
      function NavigationController($scope) {
        this.$scope = $scope;
      }

      return NavigationController;

    })()
  ]);

}).call(this);
