angular.module('application').factory 'Item', [
  '$firebase'

  ($firebase) ->
    ref = new Firebase "https://action-items.firebaseio.com/items"
    $firebase ref
]
