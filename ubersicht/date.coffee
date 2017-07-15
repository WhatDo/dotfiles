command: "date +\"%a %d %b\""

refreshFrequency: 10000

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="cal">
    <span class="icon fa fa-calendar"></span>
    <span></span>
  </div>
  """

update: (output, el) ->
    $(".cal span:last-child", el).text("  #{output}")

style: """
  -webkit-font-smoothing: antialiased
  color: #ebebeb
  font: 10px Source Code Pro
  right: 75px
  top: 6px
"""
