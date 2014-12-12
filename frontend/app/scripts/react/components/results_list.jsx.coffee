###* @jsx React.DOM ###

ResultsList = React.createClass

  propTypes:
    list:     React.PropTypes.array
    onClick:  React.PropTypes.func

  render: ->
    ResultsList = @
    list = @props.list.map (item) ->
      src = "//www.youtube.com/embed/" + item.videoId + "?rel=0&showinfo=0"
      `<li onClick = { ResultsList.props.onClick.bind(null, {id:item.videoId, title:item.title}) } >
        <iframe width="420" height="315" src={src} frameborder="0" allowfullscreen></iframe>
        <div> { item.title } </div>
        <button>+</button>
      </li>`

    `<ul>{list}</ul>`

module.exports = ResultsList