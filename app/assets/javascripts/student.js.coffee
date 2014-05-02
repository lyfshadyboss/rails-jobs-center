# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ($) ->
  init_events = ->
    deliver_area = $('#deliver-to-post')
    if deliver_area.length > 0
      deliver_area.css('opacity', 0.2)
      deliver_area.hover(
        (e)->
          deliver_area.animate({opacity: 1}, 100)
        (e)->
          deliver_area.animate({opacity: 0.2}, 300))

  $(document).ready(init_events)
  $(document).on("page:load", init_events)