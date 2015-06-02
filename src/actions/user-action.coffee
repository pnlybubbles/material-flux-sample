Flux = require 'material-flux'
keys = require '../keys'

class UserAction extends Flux.Action
  countUp: (data) ->
    @dispatch(keys.countUp, data)

module.exports = UserAction
