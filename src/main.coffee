React = require 'react'
UserContext = require './user-context'
App = require './components/user-component'

context = new UserContext()

React.render React.createElement(App, {context}), document.getElementById("app")
