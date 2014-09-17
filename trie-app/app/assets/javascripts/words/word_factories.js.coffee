WordFactories = angular.module("WordFactories", []);

class Trie
  constructor: ()->

  Trie = ->
  @characters = {}

  Trie::learn = (word, index) ->

    index = index or 0
    if index is word.length
      @isWord = true
    else if index < word.length
      char = word[index]
      subTrie = @characters[char] or new Trie()
      subTrie.learn word, index + 1
      @characters[char] = subTrie
    this


class Word
  constructor: (@http)->

  all: ()->
    @http.get("/words.json")

  create: (newWord)->
    @http.post("/words.json", {word: newWord})

WordFactories.factory("Word", ["$http", ($http)->
  new Word($http)
]);

WordFactories.service("Trie",[Trie]);
