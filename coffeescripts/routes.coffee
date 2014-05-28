angular.module('application').config [
  '$locationProvider'
  '$stateProvider'

  ($locationProvider, $stateProvider) ->
    $locationProvider.html5Mode(true).hashPrefix '!'

    urlRoot = "/~jburton/action-items"

    $stateProvider
      .state 'home',
        url: "#{urlRoot}/"
        templateUrl: 'partials/pages/home.html'
        controller: 'HomePageController as controller'
]