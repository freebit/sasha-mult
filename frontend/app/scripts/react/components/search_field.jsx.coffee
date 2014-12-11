###* @jsx React.DOM ###
SearchField = React.createClass

  propTypes:
    query: React.PropTypes.string
    onChange :React.PropTypes.func

  render: ->
   `<input type="text"
           value={ this.props.query }
           onChange={ this.props.onChange } />`

module.exports = SearchField