WordRouter = angular.module("WordRouter", [
  "ngRoute"
])

class Router

  constructor: (@routeProvider, @locationProvider)->
    console.log("Initialized Router")
    console.log("Setting Up")
    @routeProvider.
      when "/",
        templateUrl: "/word_templates",
        controller: "MyWordsController as words"
    @locationProvider.html5Mode(true)

WordRouter.config(["$routeProvider", "$locationProvider", Router])

WordRouter.config(["$httpProvider", ($httpProvider) ->
  $httpProvider.defaults.headers["X-CSRF-Token"] = $('meta[name=csrf-token]').attr("content")
])