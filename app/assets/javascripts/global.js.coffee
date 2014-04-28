jQuery ($) ->
  handle_nested_filed_events = (field_name) ->
    field_class_name = "." + field_name
    destroy_field_class_name = '.destroy-' + field_name
    add_field_class_name = '.add-' + field_name

    if $(field_class_name).length <= 0 then return

    field = $(field_class_name).last().clone()

    # don't allow destroy when field number is less than one
    if $(field_class_name).length <= 1
      $(destroy_field_class_name).fadeOut()

    on_destroy = (e) ->
      $(this).closest(field_class_name).slideUp().remove()
      if $(field_class_name).length <= 1
        $(destroy_field_class_name).fadeOut()

    $(destroy_field_class_name).click(on_destroy)

    $(add_field_class_name).click (e) ->
      e.preventDefault()

      last_field = $(field_class_name).last()
      new_field = $(field).clone()
      number = $(field_class_name).length

      $(new_field).find('label').each ->
        old_label = $(this).attr 'for'
        new_label = old_label.replace(new RegExp(/_[0-9]+_/), "_#{number}_")
        $(this).attr 'for', new_label

      $(new_field).find('select, input').each ->
        old_id = $(this).attr 'id'
        new_id = old_id.replace(new RegExp(/_[0-9]+_/), "_#{number}_")
        $(this).attr 'id', new_id

        old_name = $(this).attr 'name'
        new_name = old_name.replace(new RegExp(/\[[0-9]+\]/), "[#{number}]")
        $(this).attr 'name', new_name

      $(new_field).insertAfter(last_field)
      new_field.find(destroy_field_class_name).click(on_destroy)

      if $(field_class_name).length > 1
        $(destroy_field_class_name).fadeIn()

      window.init_date_picker()


  register_all_nested_fields_events = ->
    # resume
    handle_nested_filed_events('nested-education-field')
    handle_nested_filed_events('nested-glory-field')
    handle_nested_filed_events('nested-interest-field')
    handle_nested_filed_events('nested-skill-field')
    handle_nested_filed_events('nested-sample-work-field')
    handle_nested_filed_events('nested-work-experience-field')

    # post
    handle_nested_filed_events('nested-requirement-field')

  $(document).ready ->
    register_all_nested_fields_events()

  $(document).on 'page:load', (e) ->
    register_all_nested_fields_events()