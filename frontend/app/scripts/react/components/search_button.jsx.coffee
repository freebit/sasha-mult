###* @jsx React.DOM ###

SearchButton = React.createClass

  propTypes:
    title: React.PropTypes.string
    onClick: React.PropTypes.func

  render: ->
    `<button onClick = { this.props.onClick }>{ this.props.title }</button>`

module.exports = SearchButton