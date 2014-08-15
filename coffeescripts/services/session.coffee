angular.module('application').service 'Session', [
  '$rootScope'

  class Session
    constructor: (@$rootScope, @$window) ->

    init: ->
      ref = new Firebase "https://action-items.firebaseio.com"
      @auth = new FirebaseSimpleLogin ref, (error, user) =>
        if error
          # an error occurred while attempting login
          console.log "auth error:", error
          delete @$rootScope.user
        else if user
          # user authenticated with Firebase
          @$rootScope.user = user
        else
          # user is logged out
          delete @$rootScope.user

        @$rootScope.$apply()
        
    login: (provider) ->
      @auth.login 'github'

    logout: ->
      @auth.logout()
]
