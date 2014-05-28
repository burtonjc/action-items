angular.module('application').controller 'NavigationController', [
  '$scope'
  'Session'

  class NavigationController
    constructor: (@$scope, @Session) ->

    login: ->
      @Session.login 'github'

    logout: ->
      @Session.logout()
]