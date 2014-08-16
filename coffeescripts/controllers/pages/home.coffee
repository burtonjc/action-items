angular.module('application').controller 'HomePageController', [
  '$scope'
  'Item'

  class HomePageController
    constructor: (@$scope, Item) ->
      @$scope.items = Item
      $scope.items.$bind($scope, 'item.votes')

    addMessage: (item) ->
      @$scope.items.$add
        description: item.description
        votes: 0
]
