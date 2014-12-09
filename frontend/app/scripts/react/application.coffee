###* @jsx React.DOM ###

$              = require 'jquery'
#jus            = require 'jquery-ujs'
React          = require 'react'
window.React   = React # Expose for React chrome extension
SearchComponent = require './components/search'

container = document.getElementById 'search'
if container
  component = React.renderComponent(`<SearchComponent title="My custom prop" />`, container)

