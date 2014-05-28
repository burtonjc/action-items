angular.module('application').controller 'HomePageController', [
  '$scope'
  'Item'

  class HomePageController
    constructor: (@$scope, Item) ->
      @$scope.items = Item
      $scope.items.$bind($scope, 'item.votes')

    addMessage: (item) ->
      @$scope.items.$add
        title: item.title
        description: item.description
        votes: 0

    upVote: (item) ->
      item = @$scope.items.$child(item.$id)
      item.votes ?= 0
      item.$update
        votes: item.votes + 1

    downVote: (item) ->
      item = @$scope.items.$child(item.$id)
      item.votes ?= 0
      item.$update
        votes: item.votes - 1
]
