command: "ESC=`printf \"\e\"`; ps -A -o %cpu | awk '{s+=$1} END {printf(\"%.2f\",s/8);}'"

refreshFrequency: 2000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="cpu">
    <span class="icon fa fa-bar-chart"></span>
    <span></span>
  </div>
  """

update: (output, el) ->
    $(".cpu span:last-child", el).text("  #{output}")

style: """
  -webkit-font-smoothing: antialiased
  color: #ebebeb
  font: 10px Source Code Pro
  right: 275px
  top: 6px
"""
