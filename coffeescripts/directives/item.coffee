angular.module('application').directive 'actionItem', [
  '$rootScope'
  'Item'
  '$window'

  ($rootScope, Item, $window) ->
    restrict: 'E'
    replace: true
    templateUrl: '/partials/directives/item.html'
    scope:
      item: '=item'

    link: (scope, element, attrs, controller) ->
      unbind = $rootScope.$watch 'user', (user) ->
        scope.user = user
      scope.$on '$destroy', unbind

      scope.upVote = ->
        item = Item.$child scope.item.$id
        votes = item.votes ? 0
        item.$update votes: (votes + 1)

      scope.downVote = ->
        item = Item.$child scope.item.$id
        item.votes ?= 0
        item.$update
          votes: item.votes - 1

      scope.claim = ->
        item = Item.$child scope.item.$id
        item.$update
          owner: scope.user

      scope.ditch = ->
        item = Item.$child scope.item.$id
        item.$update
          owner: null

      scope.delete = ->
        if $window.confirm "Are you sure you want to permanently delete this item?"
          Item.$child(scope.item.$id).$remove()
]
