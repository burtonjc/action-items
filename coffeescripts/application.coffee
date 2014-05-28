angular.module('application', [
  'firebase'
  'ui.router'
]).run [ 
  'Session'

  (Session) ->
    Session.init()
]
