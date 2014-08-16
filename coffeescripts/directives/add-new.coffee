angular.module('application').directive 'addNew', [
  'Item'

  (Item) ->
    restrict: 'E'
    replace: true
    templateUrl: '/partials/directives/add-new.html'
    scope: true

    link: (scope, element, attr) ->
      element.find('textarea').keydown (event) ->
        if event.keyCode is 13 and (event.metaKey or event.ctrlKey)
          scope.addItem scope.item

      scope.addItem = (item) ->
        Item.$add
          description: item.description
          votes: 0
        delete item.description
]
