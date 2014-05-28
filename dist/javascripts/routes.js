(function() {
  angular.module('application').config([
    '$locationProvider', '$stateProvider', function($locationProvider, $stateProvider) {
      var urlRoot;
      $locationProvider.html5Mode(true).hashPrefix('!');
      urlRoot = "/~jburton/action-items";
      return $stateProvider.state('home', {
        url: "" + urlRoot + "/",
        templateUrl: 'partials/pages/home.html',
        controller: 'HomePageController as controller'
      });
    }
  ]);

}).call(this);
