postRows = $(".post-row")
opacity = 1.0
postRows.each ->
  $(@).css "opacity": "#{opacity}"
  opacity = opacity - 0.1
