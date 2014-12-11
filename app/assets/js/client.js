(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({"./app/scripts/main.coffee":[function(require,module,exports){
var app;

app = require('./react/application');



},{"./react/application":"/Users/freebit/Projects/rails/sasha-mult/frontend/app/scripts/react/application.coffee"}],"/Users/freebit/Projects/rails/sasha-mult/frontend/app/scripts/react/application.coffee":[function(require,module,exports){

/** @jsx React.DOM */
var React, Search, container;

React = require('react');

window.React = React;

Search = require('./components/search');

container = document.getElementById('search');

if (container != null) {
  React.renderComponent(Search(null), container);
}



},{"./components/search":"/Users/freebit/Projects/rails/sasha-mult/frontend/app/scripts/react/components/search.jsx.coffee","react":"react"}],"/Users/freebit/Projects/rails/sasha-mult/frontend/app/scripts/react/components/results_list.jsx.coffee":[function(require,module,exports){

/** @jsx React.DOM */
var ResultsList;

ResultsList = React.createClass({displayName: 'ResultsList',
  propTypes: {
    list: React.PropTypes.array
  },
  render: function() {
    var list;
    list = this.props.list.map(function(item) {
      var src;
      src = "//www.youtube.com/embed/" + item.videoId + "?rel=0&showinfo=0";
      return React.DOM.li(null, 
        React.DOM.iframe({width: "420", height: "315", src: src, frameborder: "0", allowfullscreen: true}), 
        React.DOM.div(null, " ",  item.title, " "), 
        React.DOM.button(null, "+")
      );
    });
    return React.DOM.ul(null, list);
  }
});

module.exports = ResultsList;



},{}],"/Users/freebit/Projects/rails/sasha-mult/frontend/app/scripts/react/components/search.jsx.coffee":[function(require,module,exports){

/** @jsx React.DOM */
var $, BUTTON_TITLE, GOOGLE_DEV_KEY, ResultsList, Search, SearchButton, SearchField;

$ = require('jquery');

require('jq-tube-util');

SearchField = require('./search_field');

SearchButton = require('./search_button');

ResultsList = require('./results_list');

BUTTON_TITLE = 'Найти';

GOOGLE_DEV_KEY = 'AI39si6PWrM7-h58AC2wluqpCTXwOs11R1sXIiq8sg0uXAcZTp5j8uCWV-4Q-qd3dw0Hi_RFE5-t6ZGRJgbgM6QT2CR3o5GeJw';

Search = React.createClass({displayName: 'Search',
  propTypes: {
    query: React.PropTypes.string,
    buttonTitle: React.PropTypes.string,
    results: React.PropTypes.array
  },
  getDefaultProps: function() {
    return {
      query: 'ну погоди',
      buttonTitle: BUTTON_TITLE,
      results: []
    };
  },
  getInitialState: function() {
    return {
      query: this.props.query,
      buttonTitle: this.props.buttonTitle,
      results: this.props.results
    };
  },
  componentWillMount: function() {
    return jQTubeUtil.init({
      key: GOOGLE_DEV_KEY,
      time: 'all_time',
      lang: 'ru',
      time: 'all_time',
      maxResults: 10
    });
  },
  render: function() {
    return React.DOM.div(null, 
      SearchField({
          query:  this.state.query, 
          onChange:  this.handleFieldChange}), 
      SearchButton({
          title:  this.state.buttonTitle, 
          onClick:  this.handleButtonClick}), 
      ResultsList({list: this.state.results})
    );
  },
  handleFieldChange: function(e) {
    var inputValue;
    inputValue = e.target.value;
    return this.setState({
      query: inputValue
    });
  },
  handleButtonClick: function() {
    var self;
    if (this.state.query !== "") {
      self = this;
      return jQTubeUtil.search(this.state.query, function(response) {
        console.log(response.videos);
        return self.setState({
          results: response.videos
        });
      });
    }
  }
});

module.exports = Search;



},{"./results_list":"/Users/freebit/Projects/rails/sasha-mult/frontend/app/scripts/react/components/results_list.jsx.coffee","./search_button":"/Users/freebit/Projects/rails/sasha-mult/frontend/app/scripts/react/components/search_button.jsx.coffee","./search_field":"/Users/freebit/Projects/rails/sasha-mult/frontend/app/scripts/react/components/search_field.jsx.coffee","jq-tube-util":"jq-tube-util","jquery":"jquery"}],"/Users/freebit/Projects/rails/sasha-mult/frontend/app/scripts/react/components/search_button.jsx.coffee":[function(require,module,exports){

/** @jsx React.DOM */
var SearchButton;

SearchButton = React.createClass({displayName: 'SearchButton',
  propTypes: {
    title: React.PropTypes.string,
    onClick: React.PropTypes.string
  },
  render: function() {
    return React.DOM.button({onClick:  this.props.onClick},  this.props.title);
  }
});

module.exports = SearchButton;



},{}],"/Users/freebit/Projects/rails/sasha-mult/frontend/app/scripts/react/components/search_field.jsx.coffee":[function(require,module,exports){

/** @jsx React.DOM */
var SearchField;

SearchField = React.createClass({displayName: 'SearchField',
  propTypes: {
    query: React.PropTypes.string,
    onChange: React.PropTypes.func
  },
  render: function() {
    return React.DOM.input({type: "text", 
           value:  this.props.query, 
           onChange:  this.props.onChange});
  }
});

module.exports = SearchField;



},{}]},{},["./app/scripts/main.coffee"]);
