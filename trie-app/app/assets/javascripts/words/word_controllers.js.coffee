WordCtrls = angular.module("WordCtrls", [])

class MyWordsController

  constructor: (@scope, @http, @Word)->
    this.greeting = "These are words!";
    @Word.all()
      .success (data)=>
        @words = data

  addWord: (newWord)->
    @Word.create(newWord)
      .success (data)=>
        @words.push data


WordCtrls.controller("MyWordsController", ["$scope", "$http", "Word", MyWordsController])