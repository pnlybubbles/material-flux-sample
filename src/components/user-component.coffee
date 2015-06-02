React = require 'react'

class AppComponent extends React.Component
  constructor: (props) ->
    super props
    @userStore = @props.context.userStore
    @state =
      count: @userStore.getCount()

  _onChange: ->
    @setState
      count: @userStore.getCount()

  componentDidMount: ->
    @userStore.onChange @_onChange.bind(@)

  componentWillUnmount: ->
    @userStore.removeAllChangeListeners()

  onClick: ->
    context = @props.context
    context.userAction.countUp(@state.count + 1)

  render: ->
    <div>
      <h1>{ @state.count }</h1>
      <button onClick={ @onClick.bind(@) }>Count Up</button>
    </div>

module.exports = AppComponent
