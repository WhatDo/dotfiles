command: "ESC=`printf \"\e\"`; ps -A -o %mem | awk '{s+=$1} END {print \"\" s}'"

refreshFrequency: 30000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="mem">
    <span class="icon fa fa-hdd-o"></span>
    <span></span>
  </div>
  """

update: (output, el) ->
    $(".mem span:last-child", el).text("  #{output}")

style: """
  -webkit-font-smoothing: antialiased
  color: #ebebeb
  font: 10px Source Code Pro
  right: 225px
  top: 6px
"""
