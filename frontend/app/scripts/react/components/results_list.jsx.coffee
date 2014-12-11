###* @jsx React.DOM ###

ResultsList = React.createClass

  propTypes:
    list:React.PropTypes.array

  render: ->

    list = @props.list.map (item) ->
      src = "//www.youtube.com/embed/" + item.videoId + "?rel=0&showinfo=0"
      `<li>
        <iframe width="420" height="315" src={src} frameborder="0" allowfullscreen></iframe>
        <div> { item.title } </div>
        <button>+</button>
      </li>`

    `<ul>{list}</ul>`

module.exports = ResultsList