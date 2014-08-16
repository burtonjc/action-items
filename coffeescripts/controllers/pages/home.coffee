angular.module('application').controller 'HomePageController', [
  '$scope'
  'Item'

  class HomePageController
    constructor: (@$scope, Item) ->
      @$scope.items = Item
      $scope.items.$bind($scope, 'item.votes')
]
