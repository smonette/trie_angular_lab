WordFactories = angular.module("WordFactories", []);

WordFactories.factory("Word", ["$http", ($http)->
  return {
    all: ()->
      $http.get("/words.json").success (data)->
        console.log(data)
      ,
      create: (newWord)->
        console.log(newWord)
        $http.post("/")
  }
])