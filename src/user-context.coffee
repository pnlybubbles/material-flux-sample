Flux = require 'material-flux'
UserAction = require './actions/user-action'
UserStore = require './stores/user-store'

class UserContext extends Flux.Context
  constructor: ->
    super
    @userAction = new UserAction(@)
    @userStore = new UserStore(@)

module.exports = UserContext
