###* @jsx React.DOM ###

Search = React.createClass

  propTypes:
    query: React.PropTypes.string

  getDefaultProps: ->
    query: ''

  getInitialState: ->
    query: @props.query

  render: ->
   `<div>
      <input
        type="text"
        value={ this.state.query }
        onChange = { this.handleChange }
      />
      <button onClick = { this.handleClick } >Найти</button>
   </div>`


  handleChange: (e) ->
    input      = e.target
    inputValue = input.value

    @setState(
      query: inputValue
    )

    #console.log e, inputValue

  handleClick: (e) ->
    alert @state.query




module.exports = Search