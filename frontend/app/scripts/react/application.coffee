###* @jsx React.DOM ###

#$              = require 'jquery'
React          = require 'react'
window.React   = React # Expose for React chrome extension
Search         = require './components/search'


container = document.getElementById 'search'

if container?
  React.renderComponent(`<Search />`, container)



