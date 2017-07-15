command: "date +\"%H:%M\""

refreshFrequency: 10000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="time">
    <span class="icon fa fa-clock-o"></span>
    <span></span>
  </div>
  """

update: (output, el) ->
    $(".time span:last-child", el).text("  #{output}")

style: """
  -webkit-font-smoothing: antialiased
  color: #ebebeb
  font: 10px Source Code Pro
  right: 10px
  top: 6px
"""
