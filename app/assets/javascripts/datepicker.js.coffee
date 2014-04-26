# turbo link and jquery issue : http://stackoverflow.com/questions/17381069/rails-jquery-doesnt-work-on-other-pages?answertab=active#tab-top

jQuery ($) ->
  window.init_date_picker = ->
    $('.datepicker').datepicker({
      format: "yyyy-mm-dd"
    });

  add_event_for_age = ->
    $('.datepicker').on 'hide', (e) ->
      if (e.currentTarget.id == "student_birthday")
        date = new Date()
        $('#student_age').attr 'value', (date.getFullYear() - e.date.getFullYear())

  $(document).on 'page:load', ->
    init_date_picker()
    add_event_for_age()

  $(document).ready ->
    init_date_picker()
    add_event_for_age()
