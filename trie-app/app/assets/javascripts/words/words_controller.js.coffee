WordCtrls = angular.module("WordCtrls", [])

class MyWordsController

  constructor: (@scope, @Word)->
    @greeting = "These are words!"

  addWord: (newWord)->
    @Word.create(newWord)
    .success (data)->
      console.log(data)

WordCtrls.controller("MyWordsController", ["$scope", "Word", MyWordsController])