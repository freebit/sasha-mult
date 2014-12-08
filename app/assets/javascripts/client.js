(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({"./app/scripts/main.coffee":[function(require,module,exports){
var app;

app = require('./react/application');



},{"./react/application":"/Users/freebit/Projects/sasha-mult/frontend/app/scripts/react/application.coffee"}],"/Users/freebit/Projects/sasha-mult/frontend/app/scripts/react/application.coffee":[function(require,module,exports){

/** @jsx React.DOM */
var $, React, SearchComponent, component, container;

$ = require('jquery');

React = require('react');

window.React = React;

SearchComponent = require('./components/search');

container = document.getElementById('search');

if (container) {
  component = React.renderComponent(SearchComponent({title: "My custom prop"}), container);
}



},{"./components/search":"/Users/freebit/Projects/sasha-mult/frontend/app/scripts/react/components/search.jsx.coffee","jquery":"jquery","react":"react"}],"/Users/freebit/Projects/sasha-mult/frontend/app/scripts/react/components/search.jsx.coffee":[function(require,module,exports){

/** @jsx React.DOM */
var Search;

Search = React.createClass({displayName: 'Search',
  propTypes: {
    query: React.PropTypes.string
  },
  getDefaultProps: function() {
    return {
      query: ''
    };
  },
  getInitialState: function() {
    return {
      query: this.props.query
    };
  },
  render: function() {
    return React.DOM.div(null, 
      React.DOM.input({
        type: "text", 
        value:  this.state.query, 
        onChange:  this.handleChange}
      ), 
      React.DOM.button({onClick:  this.handleClick}, "Найти")
   );
  },
  handleChange: function(e) {
    var input, inputValue;
    input = e.target;
    inputValue = input.value;
    return this.setState({
      query: inputValue
    });
  },
  handleClick: function(e) {
    return alert(this.state.query);
  }
});

module.exports = Search;



},{}]},{},["./app/scripts/main.coffee"]);
