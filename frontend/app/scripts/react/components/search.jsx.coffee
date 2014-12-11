###* @jsx React.DOM ###

$             = require 'jquery'
require 'jq-tube-util'
SearchField   = require './search_field'
SearchButton  = require './search_button'
ResultsList   = require './results_list'

BUTTON_TITLE = 'Найти'
GOOGLE_DEV_KEY = 'AI39si6PWrM7-h58AC2wluqpCTXwOs11R1sXIiq8sg0uXAcZTp5j8uCWV-4Q-qd3dw0Hi_RFE5-t6ZGRJgbgM6QT2CR3o5GeJw'

Search = React.createClass

  propTypes:
    query:       React.PropTypes.string
    buttonTitle: React.PropTypes.string
    results:     React.PropTypes.array

  getDefaultProps: ->
    query:       'ну погоди'
    buttonTitle: BUTTON_TITLE
    results:     []

  getInitialState: ->
    query:       @props.query
    buttonTitle: @props.buttonTitle
    results:     @props.results

  componentWillMount: ->
    jQTubeUtil.init
      key:  GOOGLE_DEV_KEY
      time: 'all_time'
      lang: 'ru'
      time: 'all_time'
      maxResults: 10

  render: ->
    `<div>
      <SearchField
          query = { this.state.query }
          onChange = { this.handleFieldChange } />
      <SearchButton
          title = { this.state.buttonTitle }
          onClick = { this.handleButtonClick } />
      <ResultsList list = {this.state.results} />
    </div>`

  handleFieldChange: (e) ->
    inputValue = e.target.value

    @setState(query: inputValue)

  handleButtonClick: ->
    if @state.query isnt ""
      self = @
      jQTubeUtil.search(
        this.state.query
        (response) ->
          console.log response.videos
          self.setState(results: response.videos)
      )




module.exports = Search