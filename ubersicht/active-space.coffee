command: """
 /usr/local/bin/kwmc query space list | tr -d , | awk -v act="$(/usr/local/bin/kwmc query space active id)" '{
  print "<span"
  if ($1 == act) { print " class=\\"active\\" " }
  print ">" $2 "</span>"
}'
"""

refreshFrequency: 1000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="ac">
    <span class="fa fa-home"></span>
    <span></span>
  </div>
  """

update: (output, el) ->
    $(".ac span:last-child", el).html("#{output}")

style: """
  -webkit-font-smoothing: antialiased
  text-align: right
  color: #ebebeb
  font: 10px Source Code Pro
  height: 16px
  overflow: hidden
  text-overflow: ellipsis
  right: 330px
  top: 6px
  width: 50%

  span
    text-align: center
    padding: 0 2px
    margin-right: 1px

  .icon
    padding: 0
    margin: 0

  .active
    background-color: #ebebeb
    color: #2a1f33
"""
