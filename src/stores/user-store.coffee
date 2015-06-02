Flux = require 'material-flux'
keys = require '../keys.coffee'

class UserStore extends Flux.Store
  constructor: (context) ->
    super context
    @state =
      count: 0
    @register keys.countUp, @onHandler

  onHandler: (data) ->
    @setState
      count: data

  getCount: ->
    @state.count

module.exports = UserStore
