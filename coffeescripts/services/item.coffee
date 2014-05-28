angular.module('application').factory 'Item', [
  '$firebase'

  ($firebase) ->
    ref = new Firebase "https://boiling-fire-9977.firebaseio.com/items"
    $firebase ref
]
