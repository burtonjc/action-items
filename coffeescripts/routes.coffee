angular.module('application').config [
  '$locationProvider'
  '$stateProvider'

  ($locationProvider, $stateProvider) ->
    $locationProvider.html5Mode(true).hashPrefix '!'

    $stateProvider
      .state 'home',
        url: "/"
        templateUrl: 'partials/pages/home.html'
        controller: 'HomePageController as controller'
]