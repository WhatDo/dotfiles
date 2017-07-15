command: "echo $(/usr/local/bin/kwmc query space active tag)"

refreshFrequency: 1000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="foc">
    <span class="icon fa fa-bars"></span>
    <span></span>
  </div>
  """

update: (output, el) ->
    $(".foc span:last-child", el).text("  #{output}")

style: """
  -webkit-font-smoothing: antialiased
  color: #ebebeb
  font: 12px Source Code Pro
  height: 16px
  left: 10px
  overflow: hidden
  text-overflow: ellipsis
  top: 4px
  width: auto
"""
